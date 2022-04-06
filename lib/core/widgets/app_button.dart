import 'package:flutter/material.dart';
import 'package:landmark_app/core/constants/app_color.dart';
import 'package:landmark_app/core/constants/app_text_style.dart';


class AppButton extends StatelessWidget {
  final String title;
  final bool isBusy;
  final void Function()? onTap;
  final Color? boxBoarderColor;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  const AppButton(
      {required this.title,
      this.isBusy = false,
      this.onTap,
      this.buttonColor = kcPrimaryColor,
      this.borderColor,
      this.boxBoarderColor = kcPrimaryColor,
      this.textColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: borderColor ?? kcPrimaryColor),
            borderRadius: BorderRadius.circular(16)),
        child: !isBusy
            ? AppText.buttonStyle(title, color: textColor ?? Colors.white)
            : AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: !isBusy ? 0 : 20,
                width: !isBusy ? 0 : 20,
                child: const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 5,
                ),
              ),
      ),
    );
  }
}
