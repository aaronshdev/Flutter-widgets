import 'package:flutter/material.dart';

Color getColor(fill, focus) {
  if (fill) {
    return Colors.black;
  }
  return focus.hasFocus ? Colors.black : Colors.grey;
}

// validated(value, String? validatedPass) {
//   RegExp exp = RegExp(
//       r'^(?=.*[a-zñ])(?=.*[A-ZÑ])(?=.*\d)(?=.*[@$#&])([A-Za-zñÑ\d@$#&]){8,16}$$');
//   if (validatedPass == null) {
//     if (value!.isEmpty) {
//       return "Meter datos";
//     } else if (!exp.hasMatch(value)) {
//       return "error";
//     }
//   } else if (value != validatedPass) {
//     return "No coinciden";
//   }
// }
IconData eyeIcon(visible) {
  if (!visible) {
    return Icons.remove_red_eye_outlined;
  }
  return Icons.disabled_visible;
}

passwordvalidate(value) {
  RegExp exp = RegExp
  (r'^(?=.*[a-zñ])(?=.*[A-ZÑ])(?=.*\d)(?=.*[@$#&])([A-Za-zñÑ\d@$#&]){8,16}$$');

  if (value!.isEmpty) {
    return "Ingrese contraseña";
  } else if (!exp.hasMatch(value)) {
    return "Contraseña invalida";
  }
}

String? emailValidate(value) {
  if (value.isEmpty) {
    return 'Por favor, ingresa tu correo electrónico';
  }
  if (!isValidEmail(value)) {
    return 'Ingresa un correo electrónico válido';
  }
  return null;
}

bool isValidEmail(String value) {
  // Expresión regular para validar el formato de correo electrónico
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(value);
}

bool isNumber(String value) {
  // Validación utilizando expresión regular
  return RegExp(r'^\d+$').hasMatch(value);
}

String? validatePhoneNumber(value) {
  if (value.isEmpty) {
    return 'Por favor, ingresa un número de teléfono';
  }
  // Validación adicional, por ejemplo, longitud o formato específico
  // Puedes utilizar expresiones regulares u otras técnicas para validar el número de teléfono

  // Ejemplo de validación de longitud mínima de 10 dígitos
  if (value.length < 10) {
    return 'El número de teléfono debe tener al menos 10 dígitos';
  }
  if (!isNumber(value)) {
    return 'Ingrese numero valido';
  }
  return null; // El número de teléfono es válido
}

String? validateName(value) {
  if (value.isEmpty) {
    return 'Por favor, ingresa tu nombre';
  }

  // Validación adicional, por ejemplo, longitud o caracteres permitidos

  // Ejemplo de validación de longitud mínima de 2 caracteres
  if (value.length < 2) {
    return 'El nombre debe tener al menos 2 caracteres';
  }

  // Ejemplo de validación de caracteres permitidos utilizando una expresión regular
  if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
    return 'El nombre solo puede contener letras y espacios';
  }

  return null; // El nombre es válido
}
