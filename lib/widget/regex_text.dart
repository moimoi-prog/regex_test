import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RegexText extends StatelessWidget {
  const RegexText({
    Key? key,
    required this.text,
    required this.regex,
  }) : super(key: key);

  final String text;
  final String regex;

  @override
  Widget build(BuildContext context) {
    final List<TextSpan> textList = <TextSpan>[];

    final RegExp stringRegex = RegExp(
      regex,
      multiLine: true,
    );

    text.splitMapJoin(
      stringRegex,
      onMatch: (Match m) {
        textList.add(
          TextSpan(
            text: m[0],
            style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
        return '';
      },
      onNonMatch: (String span) {
        textList.add(
          TextSpan(
            text: span,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        );
        return '';
      },
    );

    return RichText(
      text: TextSpan(
        children: textList,
      ),
    );
  }
}
