import 'package:flutter/material.dart';
import 'package:flutter_list/util/global_data.dart';

class ThirdSubtaskScreen extends StatelessWidget {
  const ThirdSubtaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = filterArray(GlobalData.arrayAddress);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Subtask'),
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

  // Logic Subtask 3
  // Buatlah sebuah array baru yang apabila isinya mengandung huruf "Kab." (tidak "case- sensitive") diubah menjadi "Kabupaten" (huruf "K" harus "upper-case")
  List<String> filterArray(List<String> items) {
    final result = <String>[];
    for (final item in items) {
      if (item.toLowerCase().contains('kab.')) {
        result.add(item.replaceAll('kab.', 'Kabupaten'));
      }
    }
    return result;
  }
}
