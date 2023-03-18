import 'package:flutter/material.dart';

class NativeEditText extends StatefulWidget {
  final Color? background;

  const NativeEditText({
    Key? key,
    this.background,
  }) : super(key: key);

  @override
  State<NativeEditText> createState() => _NativeEditTextState();
}

class _NativeEditTextState extends State<NativeEditText> {
  late EditTextController _controller;
  late FocusNode _node;

  @override
  void initState() {
    _controller = EditTextController();
    _node = FocusNode();
    _node.addListener(_handleFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _node.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (_node.hasFocus != _controller._focused) {
      setState(() {
        _controller.setFocused(_node.hasFocus);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
          ),
          color: widget.background,
          child: EditableText(
            controller: _controller,
            focusNode: _node,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            cursorColor: primary,
            backgroundCursorColor: Colors.blueAccent,
          ),
        ),
        if (widget.background == null)
          Container(
            decoration: BoxDecoration(
              color: _controller.isFocused
                  ? primary
                  : Colors.grey.withOpacity(0.5),
            ),
            height: _controller.isFocused ? 2 : 1,
          ),
      ],
    );
  }
}

class EditTextController extends TextEditingController {
  bool? _focused;

  void setFocused(bool value) => _focused = value;

  bool get isFocused => _focused ?? false;
}
