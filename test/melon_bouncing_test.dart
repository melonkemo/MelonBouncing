import 'package:flutter_test/flutter_test.dart';
import 'package:melon_bouncing/melon_bouncing.dart';
import 'package:melon_bouncing/melon_bouncing_platform_interface.dart';
import 'package:melon_bouncing/melon_bouncing_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMelonBouncingPlatform
    with MockPlatformInterfaceMixin
    implements MelonBouncingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MelonBouncingPlatform initialPlatform = MelonBouncingPlatform.instance;

  test('$MethodChannelMelonBouncing is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMelonBouncing>());
  });

  test('getPlatformVersion', () async {
    MelonBouncing melonBouncingPlugin = MelonBouncing();
    MockMelonBouncingPlatform fakePlatform = MockMelonBouncingPlatform();
    MelonBouncingPlatform.instance = fakePlatform;

    expect(await melonBouncingPlugin.getPlatformVersion(), '42');
  });
}
