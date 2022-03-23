import 'package:flutter/material.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: EdgeInsets.only(right: 10),
      // verticalDirection: VerticalDirection.down,
      children: [
        DataTable(columnSpacing: 2.0, columns: const [
          DataColumn(
            label: Text("Calcium"),
            numeric: false,
          ),
          DataColumn(label: Text("Iron")),
          DataColumn(label: Text("Sodium")),
          DataColumn(label: Text("Total Fat")),
          DataColumn(label: Text("Zinc")),
          // DataColumn(label: Text("Iron")),
        ], rows: const [
          DataRow(cells: [
            // DataCell(
            //   Text('Calcium'),
            // ),
            DataCell(Text("22")),
            DataCell(Text('222')),
            DataCell(Text('222')),
            DataCell(Text('222')),
            DataCell(Text("17.6"))
          ])
        ])
      ],
    );
  }

  DataColumn getDataColumn(Widget label) {
    return DataColumn(label: label);
  }

  DataCell getDataCell(Widget label) {
    return DataCell(label);
  }
}
