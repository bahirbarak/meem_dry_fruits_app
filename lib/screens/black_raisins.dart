import 'package:flutter/material.dart';
import 'package:meem_dry_fruits/custom/custom_data_table.dart';

class BlackRaisinsPage extends StatefulWidget {
  const BlackRaisinsPage({Key? key}) : super(key: key);

  @override
  State<BlackRaisinsPage> createState() => _BlackRaisinsPageState();
}

class _BlackRaisinsPageState extends State<BlackRaisinsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Black Raisins"),
          backgroundColor: const Color.fromARGB(255, 219, 197, 96),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ]),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              width: 400.0,
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  image: const DecorationImage(
                      image: AssetImage("images/dry-black-raisins.JPG"))),
            ),
            const Divider(height: 4.0),
            Container(
                alignment: Alignment.center,
                width: 400,
                height: 100,
                decoration: const BoxDecoration(color: Colors.white38),
                child: ListView(
                  padding: EdgeInsets.only(top: 30),
                  children: const [
                    Center(
                      child: Text(
                        "Nutration Facts",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Premium Afghani Black Raisins",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
            Container(
              alignment: Alignment.center,
              width: 400.0,
              height: 200.0,
              decoration: const BoxDecoration(color: Colors.white38),
              child: const CustomDataTable(),
            )
          ],
        ),
      ),
    );
  }
}
