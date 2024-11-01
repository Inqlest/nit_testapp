import 'package:flutter/material.dart';
import 'package:nitstudio_testapp/provider.dart';
import 'package:provider/provider.dart';

class HistoryListview extends StatelessWidget {
  const HistoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SquareProvider>(context);
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: provider.numberHistory.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              provider.numberHistory[index].toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
