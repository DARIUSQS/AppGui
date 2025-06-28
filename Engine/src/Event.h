#pragma once
#include "pch.h"

namespace AppGui
{
    enum class EventHandle
    {
        None = 0,
        WindowClose, WindowResize, WindowFocus, WindowLostFocus, WindowMoved,
        AppTick, AppUpdate, AppRender, 
        KeyPressed, KeyReleased, KeyTyped, 
        MouseButtonPressed, MouseButtonReleased, MouseMoved, MouseScroll
    };
 
    enum EventCategory
    {
        None = 0,
        EventCategoryApplication    = BIT(0),
        EventCategoryInput          = BIT(1),
        EventCategoryKeyBoard       = BIT(2),
        EventCategoryMouse          = BIT(3),
        EventCategoryMouseButton    = BIT(4)
    };

    #define EVENT_CLASS_TYPE(type)  static EventHandle GetType() {return type;}\
                                    virtual EventHandle GetEventType() override {return GetType();} \
                                    virtual const char* GetName() override {return #type;}

    #define EVENT_CATEGORY(category) virtual int GetEventCategory() override {return category;}

    class Event
    {
    public:
        virtual EventHandle GetEventType() = 0;
        virtual int GetEventCategory() = 0;
        virtual const char* GetName() = 0;
    };
 
    class EventDispatcher 
    {
    public:
        EventDispatcher(Event& event)
            :m_Event(event) {}

        template<typename T> 
        void Dispatch(std::function<bool(T&)> func)
        {
            if(m_Event.GetEventType() == T::GetType())
            {
                func(*(T*)&m_Event);
            }
        }

    private:
        Event& m_Event;
    };
}
