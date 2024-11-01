import 'package:flutter/material.dart';
import 'package:nitstudio_testapp/provider.dart';
import 'package:nitstudio_testapp/square_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SquareProvider(),
    )
  ], child: (const SquareApp())));
}
