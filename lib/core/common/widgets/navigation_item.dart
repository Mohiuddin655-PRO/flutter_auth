import 'package:flutter_auth/core/utils/states/activator_state.dart';
import 'package:flutter/cupertino.dart';

class NavigationItem {
  final ActivatorState<Widget> icon;
  final ActivatorState<String>? title;

  const NavigationItem({
    required this.icon,
    this.title,
  });
}
