import 'dart:math';
import 'package:flutter/material.dart';
import 'package:nitstudio_testapp/provider.dart';
import 'package:provider/provider.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  late int randomCount;

  @override
  void initState() {
    super.initState();
    randomCount = Random().nextInt(20) + 1;
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SquareProvider>(context);
    void choiseSquare(value) {
      Navigator.pop(context);
      provider.updateHistory(value);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Список квадратов',
          style: TextStyle(fontSize: 24),
        ),
        ...List.generate(
          randomCount,
          (i) => GestureDetector(
            onTap: () => choiseSquare(i + 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text(
                    "${i + 1}",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
