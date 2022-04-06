import 'package:flutter/material.dart';
import 'package:landmark_app/core/constants/app_color.dart';
import 'package:landmark_app/view/auth/auth_viewmodel.dart';
import 'package:landmark_app/view/auth/widgets/finger_print.dart';
import 'package:landmark_app/view/auth/widgets/google_auth.dart';
import 'package:stacked/stacked.dart';

import '../../core/constants/app_text_style.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViemodel>.reactive(
        viewModelBuilder: () => AuthViemodel(),
        builder: (context, model, child) => Scaffold(
              body: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  GoogleButtons(tapGoogle: model.googleAuth),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 30),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Divider(),
                          Container(
                              width: 50,
                              color: kcwhiteColor,
                              child: Center(child: AppText.headingTwo('OR')))
                        ],
                      )),
                  FingerPrintButtons(
                    onTap: () {
                      model.fingerPrintAuth();
                    },
                  )
                ],
              ),
            ));
  }
}
