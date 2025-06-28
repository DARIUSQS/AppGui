#pragma once
#include "Layer.h"
#include "pch.h"

namespace AppGui 
{
    class LayerStack
    {
    public: 
        LayerStack() = default;
        ~LayerStack();

        void PushLayer(Layer* layer);
        void PopLayer();

        std::vector<Layer*>::iterator begin() {return m_Stack.begin();}
        std::vector<Layer*>::iterator end() {return m_Stack.end();}
    private:
        std::vector<Layer*> m_Stack;
    };
}
