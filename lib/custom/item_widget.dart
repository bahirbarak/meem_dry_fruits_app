import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      width: 400,
      height: 200,
      padding: const EdgeInsets.all(5),
      child: const Text("Center"),
    );
  }
}
