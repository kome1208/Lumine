import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  final BoxBorder? border;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Clip? clipBehavior;
  
  const MyCard({
    super.key,
    this.child,
    this.backgroundColor,
    this.border,
    this.margin,
    this.padding,
    this.clipBehavior
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      clipBehavior: clipBehavior ?? Clip.none,
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16),
        border: border
      ),
      child: child
    );
  }
}
