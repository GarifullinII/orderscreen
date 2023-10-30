import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:orderscreen/views/pages/widgets/button.dart';
// import 'package:orderscreen/views/pages/widgets/order_input.dart';
import 'package:orderscreen/views/pages/widgets/topbar.dart';
// import '../../utils/constants.dart';

///  Address pages
class Address extends StatelessWidget {
  /// Constructor

  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(label: 'Ordering'),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
