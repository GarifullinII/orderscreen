import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:orderscreen/views/pages/widgets/button.dart';
// import 'package:orderscreen/views/pages/widgets/order_input.dart';
import 'package:orderscreen/views/pages/widgets/topbar.dart';

import '../../utils/constants.dart';
// import '../../utils/constants.dart';

///  Address pages
class Address extends StatelessWidget {
  /// Constructor

  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(
        label: 'Ordering',
        leadAction: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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

          ],
        ),
      ),
    );
  }
}
