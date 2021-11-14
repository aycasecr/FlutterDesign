import 'package:flutter/material.dart';
import 'package:flutter_design/module/widgets/password_field.dart';

class LoginFormField extends StatefulWidget {
  const LoginFormField({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginFormField> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textFormEmailField = TextEditingController();
  final TextEditingController _textFormPasswordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextFormField(
              textFormEmailField: _textFormEmailField,
              labelText: 'E-mail Adresi',
              hintText: 'example@mail.com',
            ),
            SizedBox(height: 20),
            PasswordField(controller: _textFormPasswordField),
          ],
        ));
  }
}

class buildTextFormField extends StatelessWidget {
  const buildTextFormField({
    Key? key,
    required TextEditingController textFormEmailField,
    required String labelText,
    required String hintText,
  })  : _textFormEmailField = textFormEmailField,
        _labelText = labelText,
        _hinText = hintText,
        super(key: key);

  final TextEditingController _textFormEmailField;
  final String _labelText;
  final String _hinText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textFormEmailField,
      validator: (value) => (value ?? '').contains('@') ? null : 'Please fill text',
      decoration: InputDecoration(
        labelText: _labelText,
        labelStyle:
            Theme.of(context).textTheme.caption?.copyWith(color: Theme.of(context).colorScheme.secondary, fontSize: 16),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        hintText: _hinText,
        hintStyle: Theme.of(context).textTheme.headline4?.copyWith(fontSize: 12),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
    );
  }
}



    // errorBorder: InputBorder.none,
        // disabledBorder: OutlineInputBorder(
        //     borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
        //     borderRadius: BorderRadius.all(Radius.circular(16.0))),