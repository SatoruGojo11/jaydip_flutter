import 'package:flutter/material.dart';
import 'package:jaydip_flutter/main.dart';

class PracticeArea extends StatefulWidget {
  const PracticeArea({super.key});

  @override
  State<PracticeArea> createState() => _PracticeAreaState();
}

class _PracticeAreaState extends State<PracticeArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Practice Area', Colors.black87),
      body: Center(
        child: DataTable(
          dataTextStyle: TextStyle(color: Colors.deepOrange),
          border: TableBorder(
            top: BorderSide(width: 5),
            bottom: BorderSide(width: 5),
            right: BorderSide(width: 5),
            left: BorderSide(width: 5),
          ),
          columns: [
            DataColumn(label: Text('Id')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('1')),
                DataCell(Text('Jaydip')),
                DataCell(Text('20')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('2')),
                DataCell(Text('Divyang')),
                DataCell(Text('21')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
