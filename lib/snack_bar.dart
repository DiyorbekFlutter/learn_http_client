import 'package:flutter/material.dart';

void snackBar(BuildContext context, String text){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 5),
        dismissDirection: DismissDirection.horizontal,
        content: Text(text),
      )
  );
}