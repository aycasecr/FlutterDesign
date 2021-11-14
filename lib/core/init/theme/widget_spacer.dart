enum WidgetSpacer {
  cardHeight,
  spaceLow,
}

extension WidgetSpacerExtensions on WidgetSpacer {
  double rawValue() {
    switch (this) {
      case WidgetSpacer.cardHeight:
        return 100;
      case WidgetSpacer.spaceLow:
        return 10;
    }
  }
}
