#pragma once
#include "pch.h"

namespace AppGui
{
    struct WindowProp
    {
        std::string Name;
        uint32_t Width;
        uint32_t Height;
        WindowProp(const std::string& name = "Default", uint32_t width = 720, uint32_t height = 640)
            : Name(name), Width(width), Height(height) {}
    };

    class Window
    {
    public:
        virtual ~Window() {}
        virtual void OnUpdate() = 0;
    
        virtual uint32_t inline GetWidth() = 0;
        virtual uint32_t inline GetHeight() = 0;

        virtual void SetEventCallback() = 0;

        static Window* Create(WindowProp props = WindowProp());
    };
}
