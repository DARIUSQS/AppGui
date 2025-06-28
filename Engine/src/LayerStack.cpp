#include "LayerStack.h"

namespace AppGui
{
    LayerStack::~LayerStack()
    {
        for(Layer* layer : m_Stack)
        {
            delete layer;
        }
    }

    void LayerStack::PushLayer(Layer* layer)
    {
        m_Stack.push_back(layer);
    }

    void LayerStack::PopLayer()
    {
        m_Stack.pop_back();
    }
}
