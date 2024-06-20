import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class SystemUiOverlayStyle2 {
   static SystemUiOverlayStyle systemUiOver() {
   SystemUiOverlayStyle systemUiOverlayStyle = const  SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarContrastEnforced: false,
    systemStatusBarContrastEnforced: false,
  );
  return systemUiOverlayStyle;
}
}