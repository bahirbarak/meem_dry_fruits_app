import 'package:flutter/material.dart';
import 'package:meem_dry_fruits/custom/item_widget.dart';
import 'package:meem_dry_fruits/screens/about.dart';
import 'package:meem_dry_fruits/screens/almond.dart';
import 'package:meem_dry_fruits/screens/apricot.dart';
import 'package:meem_dry_fruits/screens/black_raisins.dart';
import 'package:meem_dry_fruits/screens/figs.dart';
import 'package:meem_dry_fruits/screens/green_raisins.dart';
import 'package:meem_dry_fruits/screens/pine_nuts.dart';
import 'package:meem_dry_fruits/screens/pomegrantes.dart';
import 'package:meem_dry_fruits/screens/saffron.dart';
import 'package:meem_dry_fruits/widgets/navigation_drawer_widget.dart';
import '../custom/custom_data_table.dart';

class Home extends StatefulWidget {
  final String title;
  const Home({Key? key, required this.title}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  showAlertDialog(String text) {
    AlertDialog alert = AlertDialog(
      scrollable: false,
      title: Text(text),
      alignment: Alignment.center,
      content: SingleChildScrollView(
        child: Material(
            child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(maxWidth: 400.0),
                width: 400.0,
                height: 199.0,
                child: CustomDataTable())),
      ),
    );

    showDialog(
        context: context,
        builder: (context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.black,
      drawer: const NavigationDrawerWidget(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            AlertDialog alert = const AlertDialog(
              title: Text("Info"),
              content: Text("for more information check our website meem.af"),
            );
            showDialog(
                context: context,
                builder: (context) {
                  return alert;
                });
          },
          child: const Text(
            "info",
            style: TextStyle(fontSize: 20.0),
          ),
          backgroundColor: const Color.fromARGB(255, 219, 197, 96)),
      body: Column(
        children: [
          Container(
              // margin: EdgeInsets.only(top: 5, right: 3, left: 3),
              padding: EdgeInsets.only(top: 60, left: 20),
              width: 400,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/background-meem.jpeg"))),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  GestureDetector(
                    onTap: () {
                      _key.currentState!.openDrawer();
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: const Icon(
                        Icons.menu_outlined,
                        color: Color.fromARGB(255, 219, 197, 96),
                      ),
                    ),
                  )
                ],
              )),
          const Padding(padding: EdgeInsets.only(top: 15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    child: ElevatedButton(
                        child: const Text(
                          "All",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 219, 197, 96)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black)))))),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ElevatedButton(
                  child: const Text(
                    "Fruits",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 219, 197, 96)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.black)))),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ElevatedButton(
                  child: const Text(
                    "Seeds",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 219, 197, 96)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.black)))),
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // showAlertDialog("Green Raisins");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GreenRaisinsPage()));
                    },
                    child: Container(
                      // margin: EdgeInsets.only(top: 30),
                      width: 400,
                      height: 199,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          image: const DecorationImage(
                              image:
                                  AssetImage("images/dry-green-raisins-2.png")),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 30, left: 10),
                            child: Text("Green Raisins",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(255, 156, 56, 20),
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AlmondPage()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 400,
                        height: 199,
                        padding: EdgeInsets.only(left: 10.0, top: 30),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: const [
                            Text(
                              "Almond",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 156, 56, 20),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            image: const DecorationImage(
                                image: AssetImage("images/dry-almond-tr.png")),
                            color: Colors.white),
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlackRaisinsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 400,
                      height: 199,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          image: const DecorationImage(
                              image:
                                  AssetImage("images/dry-black-raisins.JPG")),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 30),
                            child: Text(
                              "Black Raisins",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 156, 56, 20),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ApricotPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 400,
                      height: 199,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          image: const DecorationImage(
                              image: AssetImage("images/dry-apricots.JPG")),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 30),
                            child: Text(
                              "Apricot",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 156, 56, 20),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PineNutsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 400,
                      height: 199,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          image: const DecorationImage(
                              image: AssetImage("images/pine-nuts.png")),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 30),
                            child: Text(
                              "Pine Nuts",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 156, 56, 20),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FigsPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 400,
                      height: 199,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          image: const DecorationImage(
                              image: AssetImage("images/afghan-dry-figs.png")),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 30),
                            child: Text(
                              "Figs",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 156, 56, 20),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SaffronPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 400,
                      height: 199,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          image: const DecorationImage(
                              image: AssetImage("images/saffron.png")),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 30),
                            child: Text(
                              "Saffron",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 156, 56, 20),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PomegrantesPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: 400,
                      height: 199,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          image: const DecorationImage(
                              image: AssetImage("images/pomegrantes.JPG")),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 30),
                            child: Text(
                              "Pomegrantes",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 156, 56, 20),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            if (index == 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutPage()));
            }
          },
          backgroundColor: Colors.black87,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.call_missed),
                label: "Abouts",
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.share),
                label: "Order",
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail),
                label: "Contact Us",
                backgroundColor: Colors.black87),
          ]),
    );
  }
}
