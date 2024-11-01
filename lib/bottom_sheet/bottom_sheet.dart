import 'package:flutter/material.dart';
import 'package:nitstudio_testapp/bottom_sheet/bottom_sheet_content.dart';

Future<void> modal(BuildContext context) async {
  await showModalBottomSheet<dynamic>(
    useSafeArea: true,
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return const FractionallySizedBox(
        heightFactor: 0.5,
        child: SingleChildScrollView(child: BottomSheetContent()),
      );
    },
  );
}
