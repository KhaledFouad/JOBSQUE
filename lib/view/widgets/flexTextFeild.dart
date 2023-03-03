import 'package:flutter/material.dart';

class FlexTextFeild extends StatefulWidget {
  FlexTextFeild(
      {Key? key,
      required this.controller,
      required this.validation,
      required this.onChanged})
      : super(key: key);
  final TextEditingController controller;
  Function validation;
  Function onChanged;

  @override
  State<FlexTextFeild> createState() => _FlexTextFeildState();
}

class _FlexTextFeildState extends State<FlexTextFeild> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: TextFormField(
        controller: widget.controller,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        maxLines: 50,
        minLines: 1,
        validator: (value) {
          return widget.validation(value);
        },
        onChanged: widget.onChanged != null ? widget.onChanged() : null,
        decoration: InputDecoration(
          hintText: "Enter Description",
          alignLabelWithHint: true,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          floatingLabelStyle: const TextStyle(
              color: Colors.orange, fontSize: 23, fontWeight: FontWeight.bold),
          labelText: "Description",
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
    );
  }
}
