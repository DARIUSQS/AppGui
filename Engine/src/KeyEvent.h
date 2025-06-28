#pragma once
#include "Event.h"
#include "pch.h"

namespace AppGui
{
    class KeyEvent : public Event
    {
    public:
        int GetKeyCode() const {return m_KeyCode;}
        EVENT_CATEGORY(EventCategoryInput | EventCategoryKeyBoard);
    protected:
        KeyEvent(int code)
            :m_KeyCode(code) {}
        uint32_t m_KeyCode;
    };

    class KeyPressEvent : public KeyEvent
    {
    public:
        KeyPressEvent(int code)
            : KeyEvent(code) {}
        EVENT_CLASS_TYPE(EventHandle::KeyPressed);
    };

    class KeyTypedEvent : public KeyEvent
    {
    public:
        KeyTypedEvent(int code)
            : KeyEvent(code) {}
        EVENT_CLASS_TYPE(EventHandle::KeyTyped);
    };

    class KeyReleasedEvent : public KeyEvent
    {
    public:
        KeyReleasedEvent(int code)
            : KeyEvent(code) {}
        EVENT_CLASS_TYPE(EventHandle::KeyReleased);
    };
}
