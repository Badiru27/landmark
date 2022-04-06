// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:landmark_app/core/constants/app_color.dart';
import 'package:landmark_app/core/constants/app_style.dart';


class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  TextOverflow? overflow;
  int? maxLines;

  AppText.largeText(this.text, {Color color = kcBlackColor}) : style = largeTextStyle.copyWith(color: color);
  AppText.appBarText(this.text, {Color color = kcBlackColor}) : style = appbarStyle.copyWith(color: color);
  AppText.headingOne(this.text, {Color color = kcBlackColor}) : style = heading1Style.copyWith(color: color);
  AppText.headingTwo(this.text, {Color color = kcBlackColor}) : style = heading2Style.copyWith(color: color);
  AppText.headingThree(this.text, {Color color = kcBlackColor}) : style = heading3Style.copyWith(color: color, fontSize: 14, decoration: TextDecoration.none);
  AppText.underlineHeadingThree(this.text, {Color color = kcBlackColor}) : style = heading3Style.copyWith(color: color, fontSize: 14, decoration: TextDecoration.underline);
  AppText.headingThreeThin(this.text, {Color color = kcBlackColor, this.overflow, this.maxLines}) : style = heading3Style.copyWith(color: color, fontWeight: FontWeight.w400);
  AppText.headingFour(this.text, {Color color = kcBlackColor}) : style = heading4Style.copyWith(color: color);
  AppText.headingFive(this.text, {Color color = kcBlackColor}) : style = heading5Style.copyWith(color: color);
  AppText.body(this.text, {Color color = kcBlackColor}) : style = bodyStyle.copyWith(color: color);
  AppText.buttonStyle(this.text, {Color color = kcBlackColor}) : style = buttonTextStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: style,
      overflow: overflow, maxLines: maxLines
    );
  }
}

class AppTextSpan extends TextSpan {
  AppTextSpan.headingOne(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: heading1Style.copyWith(color: color));
  AppTextSpan.headingTwo(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: heading2Style.copyWith(color: color));
  AppTextSpan.headingThree(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: heading3Style.copyWith(color: color));
  AppTextSpan.headingThreeThin(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: heading3Style.copyWith(color: color, fontWeight: FontWeight.w400));
  AppTextSpan.headingThreeThinner(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: heading3Style.copyWith(color: color, fontWeight: FontWeight.w300));
  AppTextSpan.headingFour(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: heading4Style.copyWith(color: color));
  AppTextSpan.headingFive(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: heading5Style.copyWith(color: color));
  AppTextSpan.body(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: bodyStyle.copyWith(color: color));
  AppTextSpan.buttonStyle(text, {Color color = kcBlackColor, List<InlineSpan>? children}) : super(text: text, children: children, style: buttonTextStyle.copyWith(color: color));

}

class AppRichText extends StatelessWidget {
  final InlineSpan? text;

  const AppRichText({ Key? key, this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(text: text!, maxLines : 20, softWrap: true,);
  }
}
