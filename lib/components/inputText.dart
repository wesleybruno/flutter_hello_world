import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData icone;

  InputText({this.controller, this.label, this.hint, this.icone});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: false,
      style: TextStyle(fontSize: 24),
      decoration: InputDecoration(
        icon: icone != null ? Icon(icone) : null,
        border: UnderlineInputBorder(),
        labelText: label,
        hintText: hint,
      ),
      keyboardType: TextInputType.number,
    );
  }
}