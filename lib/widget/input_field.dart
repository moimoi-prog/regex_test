import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      minLines: 1,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.blueAccent,
          ),
        ),
      ),
      onChanged: (String value) {
        onChanged(value);
      },
    );
  }
}
