import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class OutputField extends StatelessWidget {
  const OutputField({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: child,
    );
  }
}
