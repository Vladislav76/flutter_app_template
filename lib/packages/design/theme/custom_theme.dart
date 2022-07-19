import 'package:flutter/material.dart';
import 'package:flutter_app_template/packages/design/theme/custom_theme_data.dart';

const _fallbackTheme = CustomThemeData.light();

class CustomTheme extends StatelessWidget {
  const CustomTheme({
    super.key,
    required this.data,
    required this.child,
  });

  final CustomThemeData data;
  final Widget child;

  static CustomThemeData of(BuildContext context) {
    final _InheritedCustomTheme? inheritedTheme = context.dependOnInheritedWidgetOfExactType<_InheritedCustomTheme>();
    final CustomThemeData theme = inheritedTheme?.theme.data ?? _fallbackTheme;
    return theme;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedCustomTheme(
      theme: this,
      child: child,
    );
  }
}

class _InheritedCustomTheme extends InheritedWidget {
  const _InheritedCustomTheme({
    Key? key,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  final CustomTheme theme;

  @override
  bool updateShouldNotify(_InheritedCustomTheme old) => theme.data != old.theme.data;
}
