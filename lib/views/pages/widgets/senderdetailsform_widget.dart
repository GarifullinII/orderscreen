import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants.dart';
import '../address.dart';
import 'button.dart';
import 'order_input.dart';

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
                  interact: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Address(),
                      ),
                    );
                  },
                  label: 'Add address',
                  style: ElevatedButton.styleFrom(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    backgroundColor: ColorConstants.activeButtonColor,
                    foregroundColor: ColorConstants.activeButtonColor,
                    shadowColor: ColorConstants.activeButtonColor,
                    minimumSize: const Size(164, 33),
                  ),
                  child: Text(
                    'Add address',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: ColorConstants.activeButtonTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
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
