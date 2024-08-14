export 'package:melon_bouncing/structures/melon_bouncing_widget_extension.dart';
export 'package:melon_bouncing/structures/melon_bouncing_plugin_environment.dart';
export 'package:melon_bouncing/widgets/melon_bouncing_button.dart';
export 'package:melon_bouncing/widgets/melon_bouncing_widget.dart';

import 'melon_bouncing_platform_interface.dart';

class MelonBouncing {
  Future<String?> getPlatformVersion() {
    return MelonBouncingPlatform.instance.getPlatformVersion();
  }
}
