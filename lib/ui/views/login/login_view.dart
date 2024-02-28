import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pos/app/app_config.dart';
import 'package:flutter_pos/ui/shared/theme_config.dart';
import 'package:flutter_pos/ui/shared/ui_config.dart';
import 'package:flutter_pos/ui/views/login/login_controller.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class LoginView extends StatelessWidget {
  final LoginController _controller = Get.put(LoginController());
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: all32,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: bottom16,
                child: Text("app_name".tr(),
                    style: TextStyle(
                        color: AppConfig.instance.primaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w500)),
              ),
              Container(
                margin: bottom8,
                child: TextField(
                  onChanged: (value) {
                    _controller.username = value;
                  },
                  decoration:
                      ThemeConfig.outlineTextFieldPrimary("username".tr()),
                ),
              ),
              Container(
                margin: bottom16,
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    _controller.password = value;
                  },
                  decoration: ThemeConfig.outlineTextFieldPrimary(
                    "password".tr(),
                  ),
                ),
              ),
              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {
                    _controller.login();
                  },
                  child: Text(
                    "login".tr(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
