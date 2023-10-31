import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants.dart';
import 'button.dart';
import 'input.dart';

///  AddressForm widget
class AddressFormWidget extends StatelessWidget {
  /// Constructor
  /// @param labelText - Label with order or address
  /// @param searchLabel - Label with search details
  /// @param addressLabel - Label with address details

  const AddressFormWidget({
    required this.labelText,
    this.searchLabel,
    this.addressLabel,
    super.key,
  });

  /// Label with order or address
  final String labelText;

  /// Label with search details
  final String? searchLabel;

  /// Label with address details
  final String? addressLabel;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 16),
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
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Button(
                  interact: () {},
                  label: 'Add address',
                ),
                Button(
                  interact: () {},
                  label: 'Select address',
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
                    'Select address',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: ColorConstants.activeButtonTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Input(
            onChange: (String value) {},
            widgetOverTextField: const Spacer(),
            widgetPrefix: SvgPicture.asset(
              'assets/images/search.svg',
              colorFilter: ColorFilter.mode(
                ColorConstants.iconColor,
                BlendMode.srcIn,
              ),
            ),
            hint: searchLabel ?? '',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Input(
              onChange: (String value) {},
              widgetOverTextField: const Spacer(),
              valueMaxLines: 2,
              showPrefixIcon: false,
              hint: addressLabel ?? '',
            ),
          ),
        ],
      ),
    );
  }
}
