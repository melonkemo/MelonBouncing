import 'package:flutter/material.dart';
import 'package:melon_bouncing/melon_bouncing.dart';
import 'package:melon_bouncing/structures/melon_bouncing_plugin_environment.dart';
import 'package:melon_bouncing/structures/on_hover.dart';
import 'package:melon_bouncing/widgets/melon_bouncing_widget.dart';

class MelonBouncingButton extends StatelessWidget {
  Widget child;
  VoidCallback? callback;
  bool? active;
  bool? isBouncing;
  double? borderRadius;
  bool isHover;

  MelonBouncingButton(
      {super.key,
      required this.child,
      this.callback,
      this.active,
      this.isBouncing,
      this.borderRadius,
      this.isHover = false});

  Widget build(BuildContext context) {
    return MelonBouncingWidget(
        borderRadius: borderRadius,
        duration:
            Duration(milliseconds: active != null ? (active! ? 96 : 0) : 96),
        onPressed: () {
          if (callback != null) {
            callback?.call();
          }
        },
        scaleFactor: isBouncing != null ? (isBouncing! ? 1.5 : 0) : 1.5,
        child: child);
  }

  static Widget init(
      {enabledHover = false,
      required Widget child,
      VoidCallback? callback,
      bool? active,
      bool? isBouncing,
      double? borderRadius}) {
    return OnHover(
      disableScale: !enabledHover,
      builder: (isHover) {
        return MelonBouncingButton(
            callback: callback,
            active: active,
            isBouncing: isBouncing,
            borderRadius: borderRadius,
            isHover: isHover,
            child: child);
      },
    );
  }

  static Widget text(
      {enabledHover = false,
      required String text,
      VoidCallback? callback,
      bool? active,
      bool? isBouncing,
      Color? color,
      Color? textColor,
      double height = 36,
      double? width,
      double x = -5.0,
      double y = -1.0,
      double z = 1.04,
      FontWeight fontWeight = FontWeight.normal,
      String? fontFamily,
      double? fontSize,
      double? weight,
      EdgeInsetsGeometry? padding,
      bool isHover = false,
      double? borderRadius}) {
    return MelonBouncingButton(
      callback: callback,
      active: active,
      isBouncing: isBouncing,
      borderRadius: borderRadius,
      isHover: isHover,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(borderRadius ?? 10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: fontSize,
                fontWeight: fontWeight,
                letterSpacing: 0.0,
                fontFamily: fontFamily ??
                    MelonBouncingPluginEnvironment.instance.fontFamily,
                //fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
