import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../utils/constants.dart';

/// Input widget
class Input extends StatefulWidget {
  /// Constructor
  /// @param onChange - Input on input submitted
  /// @param widgetPrefix - Widget for prefixIcon
  /// @param hint - Input hint
  /// @param hidden - Is input hidden
  /// @param keyboardType - Keyboard type
  /// @param autofocus - Autofocus
  /// @param interacting - Interacting
  /// @param validator - Input validator function
  /// @param widgetOverTextField - Widget over TextFieldForm
  /// @param valueMaxLines - Value maxLines
  /// @param showPrefixIcon - Show prefix icon
  /// @param textInputFormatter - Text input format

  const Input({
    required this.onChange,
    this.widgetPrefix,
    this.hint,
    this.hidden = false,
    this.keyboardType,
    this.autofocus = false,
    this.interacting = false,
    this.validator,
    this.widgetOverTextField,
    this.valueMaxLines,
    this.showPrefixIcon = true,
    this.textInputFormatter,
    super.key,
  });

  /// Input on input submitted
  final ValueChanged<String>? onChange;

  /// Widget for prefixIcon
  final Widget? widgetPrefix;

  /// Input hint
  final String? hint;

  /// Is input hidden
  final bool hidden;

  /// Keyboard type
  final TextInputType? keyboardType;

  /// Autofocus
  final bool autofocus;

  /// Interacting
  final bool interacting;

  /// Input validator function
  final FormFieldValidator<String?>? validator;

  /// Widget over TextFieldForm
  final Widget? widgetOverTextField;

  /// Value maxLines
  final int? valueMaxLines;

  /// Show prefix icon
  final bool showPrefixIcon;

  /// Text input format
  final List<TextInputFormatter>? textInputFormatter;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {

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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  /// Input controller
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: controller,
              keyboardType: widget.keyboardType,
              autofocus: widget.autofocus,
              onChanged: widget.onChange,
              obscureText: _hidden,
              inputFormatters: widget.textInputFormatter,
              enableSuggestions: false,
              autocorrect: false,
              readOnly: _interacting,
              validator: widget.validator,
              cursorColor: ColorConstants.labelColor,
              cursorWidth: 1.5,
              cursorRadius: const Radius.circular(12),
              style: widget.showPrefixIcon
                  ? TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.labelColor,
                    )
                  : TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.activeButtonTextColor,
                    ),
              maxLines: widget.valueMaxLines ?? 1,
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding:
                    const EdgeInsets.only(top: 20, left: 16, bottom: 20),
                filled: widget.showPrefixIcon ? false : true,
                fillColor: ColorConstants.labelColor,
                suffixIcon: widget.showPrefixIcon
                    ? null
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/edit.png',
                            height: 20,
                            width: 20,
                            color: ColorConstants.activeButtonTextColor,
                          ),
                        ),
                      ),
                prefixIcon: widget.showPrefixIcon
                    ? Padding(
                        padding: const EdgeInsets.all(12),
                        child: widget.widgetPrefix ?? const Spacer(),
                      )
                    : null,
                hintText: widget.hint,
                hintMaxLines: 2,
                hintStyle: widget.showPrefixIcon
                    ? TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.labelColor,
                      )
                    : TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.activeButtonTextColor,
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
                    color: ColorConstants.activeButtonColor,
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
                    color: ColorConstants.errorColor,
                    width: 0.5,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: ColorConstants.errorColor,
                    width: 0.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
