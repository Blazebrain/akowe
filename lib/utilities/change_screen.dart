import 'package:flutter/material.dart';

changeScreen(widget, context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return widget;
  }));
}

changeScreenReplacement(widget, context) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return widget;
  }));
}
