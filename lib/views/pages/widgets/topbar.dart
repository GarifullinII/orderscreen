import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants.dart';

/// Pages top bar with back navigation
class TopBar extends StatelessWidget implements PreferredSizeWidget {
  /// Constructor
  /// @param label - app bar label
  /// @param labelWidget - widget instead text
  /// @param centerLabel - center for label
  /// @param lead - lead widget
  /// @param leadAction - show back button

  const TopBar({
    required this.label,
    this.labelWidget,
    this.centerLabel = true,
    this.lead,
    this.leadAction = true,
    super.key,
  });

  /// Page label
  final String label;

  /// Widget instead text
  final Widget? labelWidget;

  /// Put title in center
  final bool centerLabel;

  /// Lead widget
  final Icon? lead;

  /// Show edit action
  final bool leadAction;

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: ColorConstants.activeButtonTextColor,
        leading: leadAction
            ? IconButton(
                onPressed: () {},
                icon: lead ??
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/chevron_left.svg',
                        width: 20,
                        height: 20,
                      ),
                      // splashRadius: 20,
                    ),
              )
            : null,
        centerTitle: centerLabel,
        title: labelWidget ??
            Text(
              label,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: ColorConstants.labelColor,
                fontWeight: FontWeight.w600,
              ),
            ),
      );

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
