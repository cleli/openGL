#pragma once

class Tower {
public:
    Tower(float m_cadence, float m_puissance, float m_portee);
    ~Tower();

    /* Getters */
    float getCadence() const { return m_cadence; }
    float getPuissance() const { return m_puissance; }
    float getPortee() const { return m_portee; }

    /* Setters */
    void setCadence(float cad) { m_cadence = cad; }
    void setPuissance(float puis) { m_puissance = puis; }
    void setPortee(float port) { m_portee = port; }
    void FightCircle();
    void Tir();

private:
    float m_cadence;
    float m_puissance;
    float m_portee;
};