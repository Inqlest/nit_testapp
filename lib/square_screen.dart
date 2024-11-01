import 'package:flutter/material.dart';
import 'package:nitstudio_testapp/bottom_sheet/bottom_sheet.dart';
import 'package:nitstudio_testapp/history_listview.dart';
import 'package:nitstudio_testapp/provider.dart';
import 'package:provider/provider.dart';

class SquareApp extends StatelessWidget {
  const SquareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SquareHomePage(),
    );
  }
}

class SquareHomePage extends StatelessWidget {
  const SquareHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SquareProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Square App',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Form(
        key: provider.formKey,
        child: Column(
          children: [
            const Text(
              "История выбора",
              style: TextStyle(fontSize: 24),
            ),
            const HistoryListview(),
            Center(
              child: GestureDetector(
                onTap: () => modal(context),
                child: const Card(
                  color: Colors.purple,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Выбрать квадратик",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
