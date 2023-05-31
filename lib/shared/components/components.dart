import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) => Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: ()
        {
          function();
        },
        child:  Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ),
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(radius),
         color: background,
       ),
    );


Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isPassword = false,


}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  validator: (s){validate();},

  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix != null ? IconButton(
      onPressed: ()
      {
        suffixPressed!();
      },
      icon: Icon(
        suffix,
      ),
    ) : null,
    border: const OutlineInputBorder(),
  ),
);
