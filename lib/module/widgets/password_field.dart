import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isSecureText = false;
  void _changeSecure() {
    setState(() {
      _isSecureText = !_isSecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _isSecureText,
      decoration: InputDecoration(
          labelText: 'Sifre',
          labelStyle: Theme.of(context)
              .textTheme
              .caption
              ?.copyWith(color: Theme.of(context).colorScheme.secondary, fontSize: 16),
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          hintText: '..........',
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
          errorBorder: InputBorder.none,
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          suffixIcon: IconButton(
              onPressed: _changeSecure, icon: Icon(_isSecureText ? Icons.visibility : Icons.visibility_off))),
      validator: (value) => (value ?? '').length > 8 ? null : 'Please fill text',
    );
  }
}
