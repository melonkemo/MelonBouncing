#include "include/melon_bouncing/melon_bouncing_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "melon_bouncing_plugin.h"

void MelonBouncingPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  melon_bouncing::MelonBouncingPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
