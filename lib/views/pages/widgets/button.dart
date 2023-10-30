import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

/// Action button
class Button extends StatelessWidget {
  /// Constructor
  /// @param interact - button press action
  /// @param style - button style
  /// @param label - button label
  /// @param child - button child

  const Button({
    required this.interact,
    this.style,
    this.label,
    this.child,
    super.key,
  });

  /// Button action
  final VoidCallback? interact;

  /// Button style
  final ButtonStyle? style;

  /// Button label
  final String? label;

  /// Button child
  final Widget? child;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: style ??
            ElevatedButton.styleFrom(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
              foregroundColor: ColorConstants.activeButtonColor,
              backgroundColor: ColorConstants.inactiveButtonColor,
              shadowColor: ColorConstants.activeButtonColor,
              minimumSize: const Size(164, 33),
            ),
        onPressed: interact,
        child: child ??
            Text(
              label ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                color: ColorConstants.inactiveButtonTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
      );
}
