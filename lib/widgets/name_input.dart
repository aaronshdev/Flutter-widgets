import 'package:flutter/material.dart';
import 'package:fl_components/components/funtions_input.dart';

class NameInput extends StatelessWidget {
  final String? name;
  final IconData? icon;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final TextInputType? inputType;
  final bool obscureText;
  final String? helperText;
  final String? Function(String?)? function;
  final String formProperty;
  final Map<String, String> formValues;

  const NameInput({
    Key? key,
    this.icon,
    this.name,
    this.inputType,
    this.obscureText = false,
    this.sufixIcon,
    this.prefixIcon,
    this.helperText,
    this.function, required this.formProperty, required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      autofocus: true,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: function,
      onChanged: (value) => formValues[formProperty]= value,
      decoration: InputDecoration(
          helperText: helperText,
          hintText: name,
          labelText: name,
          icon: icon == null ? null : Icon(icon),
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          suffixIcon: sufixIcon == null ? null : Icon(sufixIcon)),
    );
  }
}
