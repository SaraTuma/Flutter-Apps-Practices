import 'package:flutter/material.dart';
import 'package:roll_rice_app/app_controller.dart';

class SwitchAppTheme extends StatelessWidget {
  const SwitchAppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
