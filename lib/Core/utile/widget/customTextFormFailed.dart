import 'package:flutter/material.dart';

class CustomTextFormFailed extends StatelessWidget {
  const CustomTextFormFailed({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    required this.textInputType,
    required this.obScure});

  final String label;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType  textInputType;
  final bool obScure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 50),
      child:
      TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
          label: Text(label),  // need label string
          prefix: Icon(icon), // icon icondata
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.black)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue)),

        ),
        controller: controller,  //TextEditController
        keyboardType: textInputType, //
        // TextInputType
        validator: (value){
        if(value == null){
          return "pleas input data";
    }
        },
        obscureText: obScure,
      ),
    );
  }
}
