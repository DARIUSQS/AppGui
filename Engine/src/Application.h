#pragma once
#include "WindowTemplate.h"
#include "LayerStack.h"
#include "Layer.h"
#include "pch.h"

namespace AppGui
{
    class Application
    {
    public:
        Application();
        ~Application();

        void OnEvent(Event& event);
        void OnUpdate();

    private:
        bool OnWindowClose(Event& event);

        bool m_Running = true;
        std::unique_ptr<Window> m_Window;
        LayerStack m_LayerStack;


    private:
        static Application* m_Instance;
    };

    Application* CreateApplication();
}
