import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants.dart';
import '../address.dart';
import 'button.dart';
import 'input.dart';

///  Form widget
class FormWidget extends StatelessWidget {
  /// Constructor
  /// @param labelText - Label with order or address
  /// @param widgetButton - Widget with buttons
  /// @param labelTextField - Label over TextFieldForm
  /// @param nameLabel - Label with full name
  /// @param emailLabel - Label with email
  /// @param phoneLabel - Label with phone
  /// @param countryLabel - Label with country
  /// @param cityLabel - Label with city
  /// @param addressLabel - Label with address line one
  /// @param postcodeLabel - Label with postcode
  /// @param formWidgetKey - Key for form

  const FormWidget({
    required this.labelText,
    required this.formWidgetKey,
    this.widgetButton,
    this.labelTextField,
    this.nameLabel,
    this.emailLabel,
    this.phoneLabel,
    this.countryLabel,
    this.cityLabel,
    this.addressLabel,
    this.postcodeLabel,
    super.key,
  });

  /// Label with details
  final String labelText;

  /// key for form
  final GlobalKey<FormState> formWidgetKey;

  /// Widget with buttons
  final Widget? widgetButton;

  /// Label over TextFieldForm
  final String? labelTextField;

  /// Label with full name
  final String? nameLabel;

  /// Label with email
  final String? emailLabel;

  /// Label with phone
  final String? phoneLabel;

  /// Label with country
  final String? countryLabel;

  /// Label with city
  final String? cityLabel;

  /// Label with address line one
  final String? addressLabel;

  /// Label with postcode
  final String? postcodeLabel;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formWidgetKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12, bottom: 16),
            child: Text(
              labelText,
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
                widgetButton ??
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
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              'Full name*',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Input(
            onChange: (String value) {},
            widgetPrefix: SvgPicture.asset(
              'assets/images/man.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: nameLabel ?? '',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              'Email*',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Input(
            keyboardType: TextInputType.emailAddress,
            onChange: (String value) {},
            widgetPrefix: SvgPicture.asset(
              'assets/images/email.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: emailLabel ?? '',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              'Phone number*',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Input(
            keyboardType: TextInputType.phone,
            textInputFormatter: [FilteringTextInputFormatter.digitsOnly],
            onChange: (String value) {},
            widgetPrefix: SvgPicture.asset(
              'assets/images/phone.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: phoneLabel ?? '',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 16, right: 20),
            child: Divider(
              color: ColorConstants.dividerColor,
              height: 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              'Country*',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Input(
            onChange: (String value) {},
            widgetPrefix: SvgPicture.asset(
              'assets/images/mapdot.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: countryLabel ?? '',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              'City*',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Input(
            onChange: (String value) {},
            widgetPrefix: SvgPicture.asset(
              'assets/images/city.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: cityLabel ?? '',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              'Address line 1*',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Input(
            onChange: (String value) {},
            widgetPrefix: SvgPicture.asset(
              'assets/images/mappin.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: addressLabel ?? '',
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
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
            child: Text(
              'Postcode*',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Input(
              keyboardType: TextInputType.number,
              onChange: (String value) {},
              widgetPrefix: SvgPicture.asset(
                'assets/images/postcode.svg',
                colorFilter: ColorFilter.mode(
                  ColorConstants.iconColor,
                  BlendMode.srcIn,
                ),
              ),
              hint: postcodeLabel ?? '220069',
            ),
          ),
        ],
      ),
    );
  }
}
