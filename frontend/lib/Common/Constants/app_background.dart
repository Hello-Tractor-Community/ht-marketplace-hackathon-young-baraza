import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsBackground extends StatefulWidget {
  const SettingsBackground({super.key, required this.child});
  final Widget child;

  @override
  State<SettingsBackground> createState() => _SettingsBackgroundState();
}

class _SettingsBackgroundState extends State<SettingsBackground> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Color.fromARGB(255, 8, 8, 8)),
        child: widget.child);
  }
}

class NewAppBackground extends StatefulWidget {
  const NewAppBackground({super.key, this.color, required this.child});
  final Widget child;
  final Color? color;

  @override
  State<NewAppBackground> createState() => _NewAppBackgroundState();
}

class _NewAppBackgroundState extends State<NewAppBackground> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: widget.color ?? Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
            systemNavigationBarColor: widget.color ?? Colors.transparent),
        child: widget.child);
  }
}
