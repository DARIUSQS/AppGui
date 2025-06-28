#pragma once 
#include "Event.h"

namespace AppGui
{

    class MouseMovedEvent : public Event
    {
    public:
        MouseMovedEvent(float mouseX, float mouseY)
            :m_MouseX(mouseX), m_MouseY(mouseY) {}
        EVENT_CATEGORY(EventCategoryInput | EventCategoryMouse);
        EVENT_CLASS_TYPE(EventHandle::MouseMoved);
    protected:
        float m_MouseX, m_MouseY;
    };


    class MouseScrollEvent : public Event 
    {
    public:
        MouseScrollEvent(float xoffset, float yoffset)
            :m_XOffset(xoffset), m_YOffset(yoffset) {}
        EVENT_CATEGORY(EventCategoryInput | EventCategoryMouse);
        EVENT_CLASS_TYPE(EventHandle::MouseScroll);
    protected:
        float m_XOffset, m_YOffset;
    };

    class MousePressEvent : public Event 
    {
    public:
        MousePressEvent(int button)
            :m_Button(button) {}
        EVENT_CATEGORY(EventCategoryInput | EventCategoryMouse);
        EVENT_CLASS_TYPE(EventHandle::MouseButtonPressed);
    protected:
        int m_Button;
    };

    class MouseReleaseEvent : public Event 
    {
    public:
        MouseReleaseEvent(int button)
            :m_Button(button) {}
        EVENT_CATEGORY(EventCategoryInput | EventCategoryMouse);
        EVENT_CLASS_TYPE(EventHandle::MouseButtonReleased);
    protected:
        int m_Button;
    };
}
