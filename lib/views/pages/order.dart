import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orderscreen/views/pages/widgets/button.dart';
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
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: OrderInput(
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
            const SenderDetailsFormWidget(),
            ColoredBox(
              color: ColorConstants.backgroundIntervalColor,
              child: const Align(
                heightFactor: 2,
                child: SizedBox(
                  height: 16,
                ),
              ),
            ),
            const RecipientAddressFormWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 26),
              child: Button(
                interact: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                  foregroundColor: ColorConstants.activeButtonColor,
                  backgroundColor: ColorConstants.inactiveButtonColor,
                  shadowColor: ColorConstants.activeButtonColor,
                  minimumSize: const Size(335, 53),
                ),
                child: Text(
                  'Next step',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: ColorConstants.inactiveButtonTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
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

class SenderDetailsFormWidget extends StatelessWidget {
  const SenderDetailsFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 16),
            child: Text(
              'Sender details',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Button(
                  interact: () {},
                  label: 'Add address',
                ),
                Button(
                  interact: () {},
                  label: 'Select address',
                ),
              ],
            ),
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Full name*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/man.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'Danilev Egor',
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Email*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/email.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'egor_zu@email.com',
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Phone number*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/phone.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: '+375726014690',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 16, right: 20),
            child: Divider(
              color: ColorConstants.dividerColor,
              height: 0.5,
            ),
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Country*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/mapdot.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'Belarus',
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'City*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/city.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'Minsk',
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Address line 1*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/mappin.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'Derzhinskogo 3b',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: Text(
                'Add address line +',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: ColorConstants.activeButtonColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: OrderInput(
              onChange: (String value) {},
              labelOverTextField: 'Postcode*',
              widgetPrefix: SvgPicture.asset(
                'assets/images/postcode.svg',
                colorFilter: ColorFilter.mode(
                  ColorConstants.iconColor,
                  BlendMode.srcIn,
                ),
              ),
              hint: '220069',
            ),
          ),
        ],
      ),
    );
  }
}

class RecipientAddressFormWidget extends StatelessWidget {
  const RecipientAddressFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 16),
            child: Text(
              'Recipient address',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Button(
                  interact: () {},
                  label: 'Add address',
                ),
                Button(
                  interact: () {},
                  label: 'Select address',
                ),
              ],
            ),
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Full name*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/man.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'Ko Yuri',
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Email*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/email.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'yuri@email.com',
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Phone number*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/phone.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: '+375294545687',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 16, right: 20),
            child: Divider(
              color: ColorConstants.dividerColor,
              height: 0.5,
            ),
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Country*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/mapdot.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'Italy',
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'City*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/city.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'Naple',
          ),
          OrderInput(
            onChange: (String value) {},
            labelOverTextField: 'Address line 1*',
            widgetPrefix: SvgPicture.asset(
              'assets/images/mappin.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: 'Via Toledo 256',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: Text(
                'Add address line +',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: ColorConstants.activeButtonColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: OrderInput(
              onChange: (String value) {},
              labelOverTextField: 'Postcode*',
              widgetPrefix: SvgPicture.asset(
                'assets/images/postcode.svg',
                colorFilter: ColorFilter.mode(
                  ColorConstants.iconColor,
                  BlendMode.srcIn,
                ),
              ),
              hint: '80100',
            ),
          ),
        ],
      ),
    );
  }
}
