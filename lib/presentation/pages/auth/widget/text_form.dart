import 'package:flutter/material.dart';
import 'package:my_todo/theme/color.dart';

class TextForm extends StatefulWidget {
  const TextForm({
    required this.title,
    this.onChanged,
    this.isPasswordForm = false,
    super.key,
  });

  final String title;
  final void Function(String)? onChanged;
  final bool isPasswordForm;

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ThemeColor.gray),
            color: Colors.white,
          ),
          child: widget.isPasswordForm
              ? TextFormField(
                  obscureText: isObscure,
                  onChanged: widget.onChanged,
                  cursorColor: ThemeColor.gray,
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      color: ThemeColor.gray,
                    ),
                  ),
                )
              : TextFormField(
                  onChanged: widget.onChanged,
                  cursorColor: ThemeColor.gray,
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
        ),
      ],
    );
  }
}
