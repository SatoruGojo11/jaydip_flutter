import 'package:flutter/material.dart';
import 'package:jaydip_flutter/DatabaseTasks/Sqlite/sqlitelogin.dart';

class ShowdataSqlite extends StatefulWidget {
  const ShowdataSqlite({super.key});

  @override
  State<ShowdataSqlite> createState() => _ShowdataSqliteState();
}

class _ShowdataSqliteState extends State<ShowdataSqlite> {
  var localdata =
      Localdatabase.instance.getAllData() as List<Map<String, dynamic>>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DataTable(
          columns: [
            DataColumn(label: Text('Id')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Email-id')),
            DataColumn(label: Text('Age')),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text("$localdata[0][0]")),
                DataCell(Text("$localdata[0][1]")),
                DataCell(Text("$localdata[0][2]")),
                DataCell(Text("$localdata[0][3]")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("$localdata[1][0]")),
                DataCell(Text("$localdata[1][1]")),
                DataCell(Text("$localdata[1][2]")),
                DataCell(Text("$localdata[1][3]")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
