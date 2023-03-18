import 'package:flutter/material.dart';

class PhoneEditingField extends StatefulWidget {
  const PhoneEditingField({Key? key}) : super(key: key);

  @override
  State<PhoneEditingField> createState() => _PhoneEditingFieldState();
}

class _PhoneEditingFieldState extends State<PhoneEditingField> {
  late TextEditingController controller;
  late FocusNode focusNode;

  @override
  void initState() {
    controller = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.primaryColor;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: EditableText(
        controller: controller,
        focusNode: focusNode,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        cursorColor: primary,
        backgroundCursorColor: Colors.blueAccent,
      ),
    );
  }
}
