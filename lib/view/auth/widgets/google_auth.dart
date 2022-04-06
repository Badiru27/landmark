import 'package:flutter/material.dart';
import 'package:landmark_app/core/widgets/app_image_button.dart';
import '../../../core/constants/app_color.dart';

class GoogleButtons extends StatelessWidget {
  final void Function()? tapGoogle;
  final bool? isLogin;
  const GoogleButtons({Key? key, this.isLogin = false, this.tapGoogle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                  onTap: tapGoogle,
                  child: AppImageButton(
                      title: isLogin!? 'Sign in': 'Log in',
                      imagePath: 'asset/images/google_logo.png',
                      textColor: kcBlackColor,
                      color: Colors.white,
                      borderColor: kcBlackColor)),
            ),
          ]),
    );
  }

  SizedBox littleSpace() => const SizedBox(
        height: 20,
      );
}
