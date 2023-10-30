import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orderscreen/views/pages/widgets/order_input.dart';
import 'package:orderscreen/views/pages/widgets/topbar.dart';
import '../../utils/constants.dart';

///  Order pages
class Order extends StatelessWidget {
  /// Constructor

  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(label: 'Ordering'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(
              color: ColorConstants.dividerColor,
              height: 0.5,
            ),
            ColoredBox(
              color: ColorConstants.backgroundIntervalColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      'Step 1',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'SF Pro',
                        fontSize: 16,
                        color: ColorConstants.labelColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Form(
              child: Column(
                children: [
                  OrderInput(
                    onChange: (String value) {},
                    labelOverTextField: 'Start date',
                    widgetPrefix: SvgPicture.asset(
                      'assets/images/calendar.svg',
                      colorFilter: ColorFilter.mode(
                        ColorConstants.iconColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    hint: 'Sep 12, 2023',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
