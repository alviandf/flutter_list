import 'package:flutter/material.dart';
import 'package:flutter_list/util/global_data.dart';

class SecondSubtaskScreen extends StatelessWidget {
  const SecondSubtaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = filterArray(GlobalData.arrayAddress);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Subtask'),
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

  // Logic Subtask 2
  // Buatlah sebuah array baru yang mengandung huruf "Kota" dan tidak "case-sensitive"
  List<String> filterArray(List<String> items) {
    final result = <String>[];
    for (final item in items) {
      if (item.toLowerCase().contains('kota')) {
        result.add(item);
      }
    }
    return result;
  }
}
