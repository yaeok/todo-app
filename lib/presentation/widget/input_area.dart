import 'package:flutter/material.dart';
import 'package:my_todo/theme/color.dart';

class InputArea extends StatelessWidget {
  const InputArea({
    super.key,
    required this.label,
    this.maxLines = 1,
    this.onChanged,
    this.enabled = true,
  });

  final String label;
  final int maxLines;
  final ValueChanged? onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 4),
        TextField(
          style: enabled
              ? null
              : TextStyle(color: ThemeColor.gray.withOpacity(0.5)),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          maxLines: maxLines,
          onChanged: onChanged,
          enabled: enabled,
        ),
      ],
    );
  }
}
