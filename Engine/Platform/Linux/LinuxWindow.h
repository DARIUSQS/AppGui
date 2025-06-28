#include "WindowTemplate.h"
#include "GLFW/glfw3.h"
#include "Event.h"

namespace AppGui
{
    class LinuxWindow : public  Window
    {
    public:
        LinuxWindow(const WindowProp& props);
        virtual ~LinuxWindow();
        virtual uint32_t inline GetWidth() override {return m_Data.Width;};
        virtual uint32_t inline GetHeight() override {return m_Data.Height;};

        virtual void SetEventCallback() override;

        void Init(const WindowProp& props);
        void Shutdown();
    private:
        GLFWwindow* m_Window;

        struct WindowData
        {
            std::string Name;
            u_int32_t Width, Height;
            std::function<void(Event&)> Callback;
        };
        
        WindowData m_Data;
    };
};
