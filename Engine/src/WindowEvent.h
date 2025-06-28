#pragma once
#include <Event.h>

namespace AppGui
{
    class EventWindowClose : public Event
    {
    public:
        EventWindowClose() = default;
        
        EVENT_CLASS_TYPE(EventHandle::WindowClose);
        EVENT_CATEGORY(EventCategoryApplication);
    };

    class EventWindowResize : public Event
    {
    public:
        EventWindowResize(int width, int height)
            : m_Width(width), m_Height(height) {}

        EVENT_CLASS_TYPE(EventHandle::WindowResize);
        EVENT_CATEGORY(EventCategoryApplication);

    private:
        uint32_t m_Width, m_Height;
    };
}
