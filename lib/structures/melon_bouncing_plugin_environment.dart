class MelonBouncingPluginEnvironment {
  static final MelonBouncingPluginEnvironment _instance =
      MelonBouncingPluginEnvironment._internal();

  factory MelonBouncingPluginEnvironment() {
    return _instance;
  }

  static MelonBouncingPluginEnvironment get instance => _instance;

  MelonBouncingPluginEnvironment._internal();

  late String fontFamily;

  void setFontFamily(String fontFamily) {
    this.fontFamily = fontFamily;
  }
}
