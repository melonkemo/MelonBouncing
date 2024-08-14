class MelonBouncingPluginEnvironment {
  static final MelonBouncingPluginEnvironment _instance =
      MelonBouncingPluginEnvironment._internal();

  factory MelonBouncingPluginEnvironment() {
    return _instance;
  }

  static MelonBouncingPluginEnvironment get instance => _instance;

  MelonBouncingPluginEnvironment._internal();

  String? fontFamily;

  void init({String? fontFamily}) {
    this.fontFamily = fontFamily;
  }
}
