
import 'melon_bouncing_platform_interface.dart';

class MelonBouncing {
  Future<String?> getPlatformVersion() {
    return MelonBouncingPlatform.instance.getPlatformVersion();
  }
}
