import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final String label;
  final TextStyle? style;

  const DividerWithText({super.key, required this.label, this.style});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label, style: style),
        const SizedBox(width: 8.0),
        Expanded(
          child: Divider(
            color: Theme.of(context).colorScheme.outline,
            height: 1,
          )
        ),
      ],
    );
  }
}
