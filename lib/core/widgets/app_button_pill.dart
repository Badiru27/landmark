import 'package:flutter/material.dart';
import 'package:landmark_app/core/constants/app_color.dart';
import 'package:landmark_app/core/constants/app_text_style.dart';

class AppButtonPill extends StatelessWidget {
  final String title;
  final bool isBusy;
  final void Function()? onTap;
  final Color? boxBoarderColor;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  final bool? isPrimaryButton;
  const AppButtonPill(
      {required this.title,
      this.isBusy = false,
      this.onTap,
      this.buttonColor,
      this.borderColor,
      this.boxBoarderColor = kcPrimaryColor,
      this.textColor,
      this.isPrimaryButton = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidthPercent = MediaQuery.of(context).size.width / 100;
    var screenHeightPercent = MediaQuery.of(context).size.height / 100;
    var buttonHeight = screenHeightPercent * 15;
    var iconSize = screenWidthPercent*4;
    return InkWell(
      onTap: onTap,
      child: FittedBox(
        child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            padding:  EdgeInsets.symmetric(horizontal: screenWidthPercent * 4, vertical: screenHeightPercent * 1.5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: buttonColor ??
                    (isPrimaryButton! ? kcDarkerPurpuleColor : kcGrayTintColor),
                // border: Border.all(color: borderColor ?? kcPrimaryColor ),
                borderRadius: BorderRadius.circular(40)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppText.headingFour(title,
                    color: isPrimaryButton! ? kcwhiteColor : kcPrimaryColor),
                if(isBusy)...{
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  alignment: Alignment.center,
                  margin:  EdgeInsets.symmetric(horizontal: isBusy ? 6 : 0),
                  child: Icon(Icons.check, size: iconSize, color: isPrimaryButton! ? kcwhiteColor : kcPrimaryColor)
                )
                }
              ],
            )),
      ),
    );
  }
}