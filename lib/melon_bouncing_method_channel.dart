import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'melon_bouncing_platform_interface.dart';

/// An implementation of [MelonBouncingPlatform] that uses method channels.
class MethodChannelMelonBouncing extends MelonBouncingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('melon_bouncing');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
