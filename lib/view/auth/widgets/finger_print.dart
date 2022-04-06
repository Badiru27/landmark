import 'package:flutter/material.dart';
import 'package:landmark_app/core/widgets/app_image_button.dart';
import '../../../core/constants/app_color.dart';

class FingerPrintButtons extends StatelessWidget {
  final void Function()? onTap;
  final bool? isLogin;
  const FingerPrintButtons({Key? key, this.isLogin = false, this.onTap})
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
                  onTap: onTap,
                  child: const AppImageButton(
                      title: 'Finger print Auth',
                      imagePath: 'asset/images/fingerprint.png',
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
