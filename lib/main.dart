import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/stylish_e_commerce.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder:(context) => const StylishECommerce()));
}