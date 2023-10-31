import 'package:flutter/material.dart';
import 'package:orderscreen/views/pages/widgets/address_form_widget.dart';
import 'package:orderscreen/views/pages/widgets/button.dart';
import 'package:orderscreen/views/pages/widgets/topbar.dart';
import '../../utils/constants.dart';

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
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: AddressFormWidget(
                labelText: 'Sender details',
                searchLabel: 'Search',
                addressLabel: 'Denilev Egor \nBelarus, Minsk, Derzhinskogo 3b, 80100',
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
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: AddressFormWidget(
                labelText: 'Recipient details',
                searchLabel: 'Search',
                addressLabel: 'Ko Yur \nItaly, Naple, Via Toledo 256, 220069',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 16, right: 20, bottom: 26),
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
                  minimumSize: const Size(336, 53),
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
          ],
        ),
      ),
    );
  }
}
