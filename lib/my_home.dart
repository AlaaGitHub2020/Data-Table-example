import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          color: Colors.pinkAccent,
          child: DataTable(sortColumnIndex: 1, sortAscending: true, columns: [
            DataColumn(
              label: Text('Name'),
            ),
            DataColumn(
              label: Text('Age'),
            ),
            DataColumn(
              label: Text('job'),
              numeric: true,
            ),
          ], rows: [
            DataRow(selected: true, cells: [
              DataCell(
                Text('Jone'),
                showEditIcon: true,
              ),
              DataCell(
                Text('30'),
                placeholder: true,
              ),
              DataCell(Text('Web Developer')),
            ]),
            DataRow(cells: [
              DataCell(Text('Diveid')),
              DataCell(Text('35')),
              DataCell(Text('Manager')),
            ]),
            DataRow(cells: [
              DataCell(Text('Alaa')),
              DataCell(Text('28')),
              DataCell(Text('Flutter Developer')),
            ]),
          ]),
        ),
      ),
    );
  }
}
