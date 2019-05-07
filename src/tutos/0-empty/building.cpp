#include "building.hpp"

#include <glad/glad.h>
#include <spdlog/spdlog.h>

Building::Building(float port, float type) : m_portee(port), m_type(type) {
    spdlog::info("Building created !");
}

Building::~Building() {
    spdlog::info("Building destructed !");
}

void Building::ActionCircle(){

}

void Building::Ameliorer() {
    
}
