#include "LinuxWindow.h"
#include "KeyEvent.h"
#include "MouseEvent.h"
#include "WindowEvent.h"

namespace AppGui
{
    static bool s_glfwInitialized = 0;

    Window* Window::Create(const WindowProp& props)
    {
        return new LinuxWindow(props);
    }

    LinuxWindow::LinuxWindow(const WindowProp& props)
    {
        Init(props);
    }
    LinuxWindow::~LinuxWindow()
    {
        Shutdown();
    }

    void LinuxWindow::Init(const WindowProp& props)
    {
        m_Data.Name = props.Name;
        m_Data.Width = props.Width;
        m_Data.Height = props.Height;
        
        if(!s_glfwInitialized)
        {
            glfwInit();
            s_glfwInitialized = 1;
        }

        m_Window = glfwCreateWindow(m_Data.Width, m_Data.Height, m_Data.Name.c_str(), nullptr, nullptr);

        glfwMakeContextCurrent(m_Window);

        glfwSetWindowUserPointer(m_Window, &m_Data);

        glfwSetWindowSizeCallback(m_Window, [](GLFWwindow* window, int width, int height)
        {
            WindowData& data = *(WindowData*)glfwGetWindowUserPointer(window);
            data.Width = width;
            data.Height = height;

            EventWindowResize event(width, height);
            data.Callback(event);
        });
            
        glfwSetWindowCloseCallback(m_Window, [](GLFWwindow* window)
        {
            WindowData& data = *(WindowData*)glfwGetWindowUserPointer(window);

            EventWindowClose event;
            data.Callback(event);
        });
        
        glfwSetKeyCallback(m_Window, [](GLFWwindow* window, int key, int scancode, int action, int mods)
        {
            WindowData& data = *(WindowData*)glfwGetWindowUserPointer(window);
            
            switch (action) 
            {
                case GLFW_PRESS:
                {
                    KeyPressEvent event(key);
                    data.Callback(event);
                    break;
                }
                case GLFW_RELEASE:
                {
                    KeyReleasedEvent event(key);
                    data.Callback(event);
                    break;
                }
                case GLFW_REPEAT:
                {
                    KeyPressEvent event(key);
                    data.Callback(event);
                    break;
                }
            }
        });
        
        glfwSetMouseButtonCallback(m_Window, [](GLFWwindow* window, int button, int action, int mods)
        {
            WindowData& data = *(WindowData*)glfwGetWindowUserPointer(window);
            
            switch (action)
            {
                case GLFW_PRESS:
                {
                    MousePressEvent event(button); 
                    data.Callback(event);
                    break;
                }
                case GLFW_RELEASE:
                {
                    MouseReleaseEvent event(button);
                    data.Callback(event);
                    break;
                }
            }
        });

        glfwSetScrollCallback(m_Window, [](GLFWwindow* window, double xoffset, double yoffset)
        {
            WindowData& data = *(WindowData*)glfwGetWindowUserPointer(window);

            MouseScrollEvent event(xoffset, yoffset);
            data.Callback(event);
        });     

        

        glfwSetCursorPosCallback(m_Window, [](GLFWwindow* window, double xpos, double ypos)
        {
            WindowData& data = *(WindowData*)glfwGetWindowUserPointer(window);

            MouseMovedEvent event((float)xpos, (float)ypos);
            data.Callback(event);
        });

        glfwSetCharCallback(m_Window, [](GLFWwindow* window, unsigned int keycode)
        {
            WindowData& data = *(WindowData*)glfwGetWindowUserPointer(window);
            KeyTypedEvent event(keycode);
            data.Callback(event);
        });
    }

    void LinuxWindow::Shutdown()
    {
        glfwDestroyWindow(m_Window);
    }

    void LinuxWindow::OnUpdate()
    {   
        glfwSwapBuffers(m_Window);
        glfwPollEvents();
    }

}
