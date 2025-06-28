#pragma once

namespace AppGui
{
    class Application
    {
    public:
        Application();
        ~Application();

        void OnEvent();
        void OnUpdate();

    private:
        bool m_Running;
    };

    Application* CreateApplication();
}
