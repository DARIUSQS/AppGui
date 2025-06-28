#include "Application.h"
#include "WindowEvent.h"
#include "pch.h"

namespace AppGui
{
    Application* Application::m_Instance = nullptr;

    Application::Application() 
    {
        m_Instance = this;
        m_Window = std::unique_ptr<Window>(Window::Create());
        m_Window->SetEventCallback(std::bind(&Application::OnEvent, this, std::placeholders::_1));
    }

    Application::~Application()
    {

    }

    void Application::OnEvent(Event& event)
    {
        EventDispatcher dispatcher(event);
        dispatcher.Dispatch<EventWindowClose>(std::bind(&Application::OnWindowClose, this, std::placeholders::_1));

        for(Layer* layer : m_LayerStack)
        {
            layer->OnEvent(event);
        }
    }

    void Application::OnUpdate()
    {
        while(m_Running)
        {
            m_Window->OnUpdate();
    
            for(Layer* layer : m_LayerStack)
            {
                layer->OnUpdate();
            }
        } 
    } 
    
    bool Application::OnWindowClose(Event& event)
    {
        m_Running = 0;
        return 1;   
    }
}
