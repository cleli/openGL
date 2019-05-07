#include "tower.hpp"

#include <glad/glad.h>
#include <spdlog/spdlog.h>

Tower::Tower(float cad, float puis, float port) : m_cadence(cad), m_puissance(puis), m_portee(port) {
    spdlog::info("Tower created !");
}

Tower::~Tower() {
    spdlog::info("Tower destructed !");
}

void Tower::FightCircle(){

}

void Tower::Tir() {
    
}
