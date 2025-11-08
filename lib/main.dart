import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:first_flutter/currency_converter_material_page.dart';
import 'package:first_flutter/currency_converter_cupertino_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    final isIOS = Platform.isIOS;
    return  MaterialApp(
      home: isIOS
      ?CurrencyConverterCupertinoPage()
      :CurrencyConverterMaterialPage()
    );
  }
}