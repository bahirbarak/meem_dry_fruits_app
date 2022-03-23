import 'package:flutter/material.dart';

class GenericDataTable extends StatelessWidget {
  const GenericDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: [], rows: []);
  }
}
