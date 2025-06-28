#pragma once
#include "Application.h"
#include <iostream>

extern AppGui::Application* AppGui::CreateApplication();

int main(int argc, char** argv)
{
   auto app = AppGui::CreateApplication();
   app->OnUpdate();
   delete app;
}
