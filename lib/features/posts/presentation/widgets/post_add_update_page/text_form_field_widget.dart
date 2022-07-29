import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool multiLines;
  final String name;
  const TextFormFieldWidget({
    Key? key,
    required this.controller,
    required this.multiLines,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: TextFormField(
        minLines: multiLines ? 6 : 1,
        maxLines: multiLines ? 6 : 1,
        controller: controller,
        validator: (val) => val!.isEmpty ? '$name can\'t be empty.' : null,
        decoration: InputDecoration(hintText: name),
      ),
    );
  }
}
