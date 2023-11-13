import 'package:fl_components/components/funtions_input.dart';
import 'package:fl_components/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(20.0);
    const margin = EdgeInsets.only(bottom: 15);
    const helperText = "Usar caracteres y numeros";
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      "name"  : "",
      "phone" :"",
      "addres": "",
      "mail"  :"",
      "password": "",
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form screen'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          child: Padding(
            padding: padding,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: margin,
                    child: NameInput(
                      name: 'Name', 
                      inputType: TextInputType.name,
                      function: (value) => validateName(value), formProperty: 'name', formValues: formValues,
                    ),
                  ),
                  Padding(
                    padding: margin,
                    child: NameInput(
                      name: 'Phone',
                      inputType: TextInputType.phone,
                      icon: Icons.phone,
                      function: (value) => validatePhoneNumber(value),
                      formProperty: 'PHONE', formValues: formValues
                    ),
                  ),
                  Padding(
                    padding: margin,
                    child: NameInput(
                      name: 'Address',
                      inputType: TextInputType.streetAddress,
                      prefixIcon: Icons.maps_home_work_outlined,
                      formProperty: 'addres', formValues: formValues
                    ),
                  ),
                  Padding(
                    padding: margin,
                    child: NameInput(
                      name: 'Email',
                      inputType: TextInputType.emailAddress,
                      prefixIcon: Icons.mail_outlined,
                      function: (value) => emailValidate(value),
                      formProperty: 'mail', formValues: formValues
                    ),
                  ),
                  Padding(
                    padding: margin,
                    child: NameInput(
                      name: 'Password',
                      inputType: TextInputType.visiblePassword,
                      sufixIcon: Icons.remove_red_eye_outlined,
                      prefixIcon: Icons.password_outlined,
                      obscureText: false,
                      helperText: helperText,
                      function: (value) => passwordvalidate(value),
                      formProperty: 'password', formValues: formValues
                    ),
                  ),
                  Padding(
                    padding: margin,
                    child: DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(value: 'User', child: Text('User'),),
                        DropdownMenuItem(value: 'Owner', child: Text('Owner'),),
                        DropdownMenuItem(value: 'Worker', child: Text('Worker'),),
                      ], 
                      onChanged: (value) {  },
                   ),
                  ),
                  ElevatedButton(
                    child: const Text('Enviar'),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (formKey.currentState!.validate()) {
                        debugPrint('$formValues');
                        return;
                      }
                    },
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
