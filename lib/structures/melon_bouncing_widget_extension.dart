import 'package:flutter/widgets.dart';

import 'on_hover.dart';

extension MelonBouncingWidgetExtension on Widget {
  Widget hover({
    double x = -5.0,
    double y = -1.0,
    double z = 1.04,
    enabled = true,
  }) {
    return OnHover(
        x: x,
        y: y,
        z: z,
        disableScale: !enabled,
        builder: (isHover) {
          return this;
        });
  }
}
