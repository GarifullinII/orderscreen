import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

/// Input widget
class OrderInput extends StatefulWidget {
  /// Constructor
  /// @param onChange - Input on input submitted
  /// @param labelOverTextField - Label over TextFormField
  /// @param widgetPrefix - Widget for prefixIcon
  /// @param hint - Input hint
  /// @param hidden - Is input hidden
  /// @param keyboardType - Keyboard type
  /// @param autofocus - Autofocus
  /// @param interacting - Interacting
  /// @param validator - Input validator function

  const OrderInput({
    required this.onChange,
    required this.labelOverTextField,
    required this.widgetPrefix,
    this.hint,
    this.hidden = false,
    this.keyboardType,
    this.autofocus = false,
    this.interacting = false,
    this.validator,
    super.key,
  });

  /// Input on input submitted
  final ValueChanged<String>? onChange;

  /// Label over TextFormField
  final String labelOverTextField;

  /// Widget for prefixIcon
  final Widget widgetPrefix;

  /// Input hint
  final String? hint;

  /// Is input hidden
  final bool hidden;

  /// Keyboard type
  final TextInputType? keyboardType;

  /// Autofocus
  final bool autofocus;

  /// interacting
  final bool interacting;

  /// Input validator function
  final FormFieldValidator<String?>? validator;

  @override
  State<OrderInput> createState() => _OrderInputState();
}

class _OrderInputState extends State<OrderInput> {
  /// Is input hidden
  late bool _hidden;

  /// Is input in API interaction
  late bool _interacting;

  @override
  void initState() {
    super.initState();
    _hidden = widget.hidden;
    _interacting = widget.interacting;
  }

  /// Input controller
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12, bottom: 8),
            child: Text(
              widget.labelOverTextField,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.labelColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: widget.keyboardType,
              autofocus: widget.autofocus,
              controller: controller,
              onChanged: widget.onChange,
              obscureText: _hidden,
              enableSuggestions: false,
              autocorrect: false,
              readOnly: _interacting,
              validator: widget.validator,
              cursorColor: ColorConstants.labelColor,
              cursorWidth: 1.5,
              cursorRadius: const Radius.circular(20),
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorConstants.labelColor,
              ),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: widget.widgetPrefix,
                ),
                hintText: widget.hint,
                hintStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.labelColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: ColorConstants.borderColor,
                    width: 0.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: ColorConstants.borderColor,
                    width: 0.5,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: ColorConstants.borderColor,
                    width: 0.5,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: ColorConstants.borderColor,
                    width: 0.5,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: ColorConstants.borderColor,
                    width: 0.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
