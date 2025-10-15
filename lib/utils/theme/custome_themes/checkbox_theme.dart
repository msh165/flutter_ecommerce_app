import 'package:flutter/material.dart';


class TCheckBoxTheme{

  TCheckBoxTheme._();



// Customizable Light Text Theme
static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.blue;
    } else {
      return Colors.transparent;
    }
  }),
); // CheckboxThemeData


// Customizable Dark Text Theme
static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.blue;
    } else {
      return Colors.transparent;
    }
  }),
); // CheckboxThemeData

}