import 'package:flutter/material.dart';
import 'package:landmark_app/core/constants/app_color.dart';
import 'package:landmark_app/core/constants/app_text_style.dart';


class AppImageButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final void Function()? onTap;
  const AppImageButton(
      {required this.title,
      required this.imagePath,
      this.onTap,
      this.color,
      this.textColor,
      this.borderColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidthPercent = MediaQuery.of(context).size.width / 100;
    var screenHeightPercent = MediaQuery.of(context).size.height / 100;
    var buttonHeight = screenHeightPercent * 6;
    var imageSize = screenWidthPercent*15;
    return InkWell(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: buttonHeight,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: borderColor!),
              color: color,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: imageSize, height: imageSize),
              SizedBox(
                width: screenWidthPercent*3,
              ),
              AppText.buttonStyle(
                title,
                color: textColor!,
              ),
            ],
          )),
    );
  }
}


