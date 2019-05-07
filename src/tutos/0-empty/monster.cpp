#include "monster.hpp"

#include <glad/glad.h>
#include <spdlog/spdlog.h>

Monster::Monster(float pv, float resis) : m_pv(pv), m_resistance(resis) {
    spdlog::info("Monster created !");
}

Monster::~Monster() {
    spdlog::info("Monster destructed !");
}

void Monster::Moving(){

}
void Monster::PathFinding(){
	
}
