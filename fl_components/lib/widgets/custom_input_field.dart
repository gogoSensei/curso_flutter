import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? sufix;
  final TextInputType? tipoInput;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.sufix,
    this.tipoInput,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: tipoInput,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3
            ? 'Este campo no puede tener menos de 3 caracteres'
            : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        // prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: sufix == null ? null : Icon(sufix),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}


  // focusedBorder: OutlineInputBorder(
  //   borderSide: BorderSide(color: Colors.green),
  //   borderRadius: BorderRadius.only(
  //     bottomLeft: Radius.circular(10),
  //     topRight: Radius.circular(10),
  //   ),
  // ),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.only(
  //     bottomLeft: Radius.circular(10),
  //     topRight: Radius.circular(10),
  //   ),
  // ),