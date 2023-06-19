import 'package:flutter/material.dart';

import '../main.dart';

class DataTableUse extends StatefulWidget {
  const DataTableUse({super.key});

  @override
  State<DataTableUse> createState() => _DataTableUseState();
}

class _DataTableUseState extends State<DataTableUse> {
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
