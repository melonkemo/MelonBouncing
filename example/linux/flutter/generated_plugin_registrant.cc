//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <melon_bouncing/melon_bouncing_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) melon_bouncing_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MelonBouncingPlugin");
  melon_bouncing_plugin_register_with_registrar(melon_bouncing_registrar);
}
