import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'melon_bouncing_method_channel.dart';

abstract class MelonBouncingPlatform extends PlatformInterface {
  /// Constructs a MelonBouncingPlatform.
  MelonBouncingPlatform() : super(token: _token);

  static final Object _token = Object();

  static MelonBouncingPlatform _instance = MethodChannelMelonBouncing();

  /// The default instance of [MelonBouncingPlatform] to use.
  ///
  /// Defaults to [MethodChannelMelonBouncing].
  static MelonBouncingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MelonBouncingPlatform] when
  /// they register themselves.
  static set instance(MelonBouncingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
