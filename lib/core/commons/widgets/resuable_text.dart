

import 'package:flutter/cupertino.dart';

class ResuableText extends StatelessWidget {
  const ResuableText({super.key, required this.text, required this.textStyle});

  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      textAlign: TextAlign.left,
      maxLines: 1,
      softWrap: false,
      style: textStyle,
    );
  }
}
