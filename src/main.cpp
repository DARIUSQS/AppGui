#include "Application.h"
#include "EntryPoint.h"

class Sandbox : public AppGui::Application 
{

};

AppGui::Application* AppGui::CreateApplication() 
{
    return new Sandbox;
}
