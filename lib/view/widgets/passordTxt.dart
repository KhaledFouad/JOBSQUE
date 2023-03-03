// ignore_for_file: must_be_immutable, library_private_types_in_public_api, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PasswordTxt extends StatefulWidget {
  String labelText;
  TextInputAction Action;
  TextInputType keyBoardType;
  TextEditingController control;
  String? Function(String?)? validate;
  var icon;
  Function()? ontap;
  bool secured;
  Function validation;
  Function onChanged;
  String? startValue;
  final int? maxLines;
  final Widget? prefixIcon;
  PasswordTxt({
    super.key,
    required this.control,
    required this.secured,
    required this.icon,
    required this.ontap,
    required this.Action,
    required this.keyBoardType,
    required this.labelText,
    required this.validation,
    required this.onChanged,
    this.startValue,
    this.maxLines = 1,
    this.prefixIcon,
  });

  @override
  _PasswordTxtState createState() => _PasswordTxtState();
}

class _PasswordTxtState extends State<PasswordTxt> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        maxLines: widget.maxLines,
        validator: (value) {
          return widget.validation(value);
        },
        onChanged: widget.onChanged != null ? widget.onChanged() : null,
        cursorHeight: 20,
        obscureText: widget.secured,
        controller: widget.control,
        cursorColor: Colors.orange,
        textInputAction: widget.Action,
        keyboardType: widget.keyBoardType,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.abc_outlined),
          suffix: InkWell(
            onTap: widget.ontap,
            child: Icon(
              widget.icon,
              color: Colors.orange,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          floatingLabelStyle: const TextStyle(
              color: Colors.orange, fontSize: 23, fontWeight: FontWeight.bold),
          labelText: widget.labelText,
          labelStyle: const TextStyle(fontSize: 23),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
            borderSide: const BorderSide(
              color: Colors.orange,
              width: 2.5,
            ),
          ),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.03,
      ),
    ]);
  }
}
