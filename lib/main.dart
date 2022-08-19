import 'package:educacaoflutter/screen/escolapmsm_screen.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  if (Platform.isAndroid) {
    debugPrint("app android");
    runApp(EscolaPmsm());
  }
  if (Platform.isIOS) {
    debugPrint("app ios");
  }
}
