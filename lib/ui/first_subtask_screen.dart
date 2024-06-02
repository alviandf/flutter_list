import 'package:flutter/material.dart';
import 'package:flutter_list/util/global_data.dart';

class FirstSubtaskScreen extends StatelessWidget {
  const FirstSubtaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = reverseArray(GlobalData.arrayAddress);

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Subtask'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }

  // Logic Subtask 1
  // Membalikkan array tanpa membuat array baru
  List<String> reverseArray(List<String> items) {
    for (int i = 0; i < items.length ~/ 2; i++) {
      final temp = items[i];
      items[i] = items[items.length - i - 1];
      items[items.length - i - 1] = temp;
    }
    return items;
  }
}
