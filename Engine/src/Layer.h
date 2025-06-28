#pragma once 
#include "pch.h"
#include "Event.h"
    
namespace AppGui
{
    class Layer
    {
    public:
        Layer(const std::string& name)
            :m_DebugName(name) {}
        ~Layer() = default;

        virtual void OnUpdate() = 0;
        virtual void OnEvent(Event& event) = 0;
    private:
        std::string m_DebugName;
    };
}
