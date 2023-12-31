import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orderscreen/views/pages/widgets/button.dart';
import 'package:orderscreen/views/pages/widgets/input.dart';
import 'package:orderscreen/views/pages/widgets/form_widget.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
              child: Text(
                'Start date',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.labelColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Input(
                keyboardType: TextInputType.datetime,
                onChange: (String value) {},
                widgetPrefix: SvgPicture.asset(
                  'assets/images/calendar.svg',
                  colorFilter: ColorFilter.mode(
                    ColorConstants.iconColor,
                    BlendMode.srcIn,
                  ),
                ),
                hint: 'Sep 12, 2023',
              ),
            ),
            ColoredBox(
              color: ColorConstants.backgroundIntervalColor,
              child: const Align(
                heightFactor: 2,
                child: SizedBox(
                  height: 16,
                ),
              ),
            ),
            FormWidget(
              labelText: 'Sender details',
              formWidgetKey: GlobalKey<FormState>(),
              nameLabel: 'Danilev Egor',
              emailLabel: 'egor_zu@email.com',
              phoneLabel: '+375726014690',
              countryLabel: 'Belarus',
              cityLabel: 'Minsk',
              addressLabel: 'Derzhinskogo 3b',
              postcodeLabel: '220069',
            ),
            ColoredBox(
              color: ColorConstants.backgroundIntervalColor,
              child: const Align(
                heightFactor: 2,
                child: SizedBox(
                  height: 16,
                ),
              ),
            ),
            FormWidget(
              labelText: 'Recipient address',
              formWidgetKey: GlobalKey<FormState>(),
              nameLabel: 'Ko Yuri',
              emailLabel: 'yuri@email.com',
              phoneLabel: '+375294545687',
              countryLabel: 'Italy',
              cityLabel: 'Naple',
              addressLabel: 'Via Toledo 256',
              postcodeLabel: '80100',
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 26),
                child: Button(
                  interact: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: ColorConstants.activeButtonColor,
                    foregroundColor: ColorConstants.activeButtonColor,
                    shadowColor: ColorConstants.activeButtonColor,
                    minimumSize: const Size(335, 53),
                  ),
                  child: Text(
                    'Next step',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: ColorConstants.activeButtonTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
