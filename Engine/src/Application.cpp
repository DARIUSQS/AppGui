#include "Application.h"
#include "pch.h"

namespace AppGui
{
    Application::Application() 
    {
        m_Running = 1;
    }

    Application::~Application()
    {

    }

    void Application::OnEvent()
    {

    }

    void Application::OnUpdate()
    {
        while(m_Running)
        {

        } 
    } 
}
