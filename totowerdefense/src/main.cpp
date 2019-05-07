#include <stdio.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include <SDL/SDL.h>
#include "map_reader.h"
#include "utils.h"

#define MAX_TEXTURES 10

typedef struct {
	int screen_width, screen_height;
	int sdlflags;
	int screen_pixels;
	float scale;
	Map* map;
	GLuint textures[MAX_TEXTURES];
} App;

void setup_opengl( int width, int height )
{
	float ratio = (float) width / (float) height;

	/* Set the clear color. */
	glClearColor( 0, 0, 0, 0 );

	/* Setup our viewport. */
	glViewport( 0, 0, width, height );

	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	gluOrtho2D(-ratio,ratio,1,-1);

	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();

	SDL_GL_SwapBuffers();
}

bool handle_key_down(App* app, SDL_keysym* keysym )
{
	switch( keysym->sym ) {
	case SDLK_ESCAPE:
		return false;
	case SDLK_SPACE:
		break;
	case SDLK_PLUS:
	case SDLK_KP_PLUS:
		app->scale += 0.2f;
		break;
	case SDLK_MINUS:
	case SDLK_KP_MINUS:
		app->scale -= 0.2f;
		break;
	default:
		break;
	}
	return true;
}

void init_draw(App* app)
{
	glEnable(GL_BLEND); // enable blending
	glEnable(GL_TEXTURE_2D);
	// transparency
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	glShadeModel(GL_SMOOTH);

	glGenTextures(MAX_TEXTURES, app->textures);
	glBindTexture(GL_TEXTURE_2D, app->textures[0]);
	glTexImage2D(GL_TEXTURE_2D, 0,GL_RGB,
							 app->map->map_data->x, app->map->map_data->y, 0, GL_RGB,
							 GL_UNSIGNED_BYTE, app->map->map_data->data);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glBindTexture(GL_TEXTURE_2D, 0);
}

void draw_screen(App* app)
{

	static GLfloat v0[] = { -1.0f, -1.0f,  1.0f };
	static GLfloat v1[] = {  1.0f, -1.0f,  1.0f };
	static GLfloat v2[] = {  1.0f,  1.0f,  1.0f };
	static GLfloat v3[] = { -1.0f,  1.0f,  1.0f };

	static GLfloat red[] = { 1.0f, 0.0f,  0.0f };
	static GLfloat white[] = {  1.0f, 1.0f,  1.0f };
	static GLfloat blue[] = {  0.2f,  0.3f,  0.8f };
	static GLfloat green[] = { 0.1f,  0.9f,  0.5f };
	/* Clear the color and depth buffers. */
	glClearColor( 0, 0, 0, 0 );
	glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

	/* We don't want to modify the projection matrix. */
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity( );

	glScalef(app->scale, app->scale, 1);

	/* Send our triangle data to the pipeline. */
	glBindTexture(GL_TEXTURE_2D, app->textures[0]);
	glBegin( GL_QUADS );

	glColor3fv( white );
	glTexCoord2f(0, 0);
	glVertex3fv( v0 );
	glTexCoord2f(1, 0);
	glVertex3fv( v1 );
	glTexCoord2f(1, 1);
	glVertex3fv( v2 );
	glColor3fv( white );
	glTexCoord2f(0, 1);
	glVertex3fv( v3 );

	glEnd( );
	glBindTexture(GL_TEXTURE_2D, 0);

	SDL_GL_SwapBuffers( );
}


bool process_events(App* app)
{
	SDL_Event event;
	bool stay = true;
	while( SDL_PollEvent( &event ) ) {

		switch( event.type ) {
		case SDL_KEYDOWN:
			/* Handle key presses. */
			stay = handle_key_down(app, &event.key.keysym );
			break;
		case SDL_QUIT:
			stay = false;
			break;
		case SDL_VIDEORESIZE:
			app->screen_width = event.resize.w;
			app->screen_height = event.resize.h;
			if( SDL_SetVideoMode( app->screen_width, app->screen_height,
														app->screen_pixels, app->sdlflags ) == 0 ) {
				error("Video mode set failed: %s", SDL_GetError( ) );
			}
			setup_opengl(event.resize.w, event.resize.h);
			break;
		}
		if (!stay)
			return false;
	}
	return true;
}

int main(int argc, char** argv){
	const SDL_VideoInfo* info = NULL;
	App app;
	GLenum err;

	if (argc != 2)
	{
		error("Wrong argument count:\nUsage:\n%s <idt_path>", argv[0]);
	}
	app.map = read_idt(argv[1]);
	check_map(app.map);

	/* First, initialize SDL's video subsystem. */
	if( SDL_Init( SDL_INIT_VIDEO | SDL_INIT_TIMER ) < 0 ) {
		error("Video initialization failed: %s", SDL_GetError( ) );
	}

	SDL_WM_SetCaption("Totowerdefense", "totowerdefense");
	/* Let's get some video information. */
	info = SDL_GetVideoInfo( );

	if( !info ) {
		error("Video query failed: %s", SDL_GetError( ) );
	}

	app.scale = 1.f;
	app.screen_width = info->current_w / 2;
	app.screen_height = info->current_h / 2;
	app.screen_pixels = info->vfmt->BitsPerPixel;

	SDL_GL_SetAttribute( SDL_GL_DOUBLEBUFFER, 1 );

	app.sdlflags = SDL_OPENGL | SDL_DOUBLEBUF | SDL_RESIZABLE;

	/*
		 * Set the video mode
		 */
	if( SDL_SetVideoMode( app.screen_width, app.screen_height,
												app.screen_pixels, app.sdlflags ) == 0 ) {
		error("Video mode set failed: %s", SDL_GetError( ) );
	}

	/*
		 * At this point, we should have a properly setup
		 * double-buffered window for use with OpenGL.
		 */
	setup_opengl( app.screen_width, app.screen_height);

	/*
		 * Now we want to begin our normal app process--
		 * an event loop with a lot of redrawing.
	*/

	init_draw(&app);


	while( 1 ) {
		/* Process incoming events. */
		if(!process_events(&app)) break;
		/* Draw the screen. */
		draw_screen(&app);
		SDL_Delay(10);
	}
	SDL_Quit();
	freeAllAllocations();
	return 0;
}
