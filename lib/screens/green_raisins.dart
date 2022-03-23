import 'package:flutter/material.dart';
import 'package:meem_dry_fruits/custom/custom_data_table.dart';

class GreenRaisinsPage extends StatefulWidget {
  const GreenRaisinsPage({Key? key}) : super(key: key);

  @override
  State<GreenRaisinsPage> createState() => _GreenRaisinsPageState();
}

class _GreenRaisinsPageState extends State<GreenRaisinsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Green Raisins"),
          backgroundColor: const Color.fromARGB(255, 219, 197, 96),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
        backgroundColor: const Color.fromARGB(255, 219, 197, 96),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              width: 400.0,
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  image: const DecorationImage(
                      image: AssetImage("images/dry-green-raisins-2.png"))),
            ),
            const Divider(height: 4.0),
            Container(
                alignment: Alignment.center,
                width: 400,
                height: 100,
                decoration: const BoxDecoration(color: Colors.white38),
                child: ListView(
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
                        "Premium Afghani Green Raisins",
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
              height: 100.0,
              decoration: const BoxDecoration(color: Colors.white38),
              child: const CustomDataTable(),
            )
          ],
        ),
      ),
    );
  }
}
