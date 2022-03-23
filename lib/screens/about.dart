import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 219, 197, 96),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Column(
            children: const [
              Text(
                "About Us",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 219, 197, 96)),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Text(
                  "Afghanistan is a mountainous country with most of the world's best natural and organic agriculture.",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Text(
                  "MeeM is a well-diversified exporter and dealer of quality Afghan organic goods such as nuts, dried fruits, and fresh fruits in foreign markets, primarily the United Arab Emirates and India with a solid supply network of products and services that plays a significant role to improve our national economic growth.",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Text(
                  "Kabul, Afghanistan's capital, is where the organization's headquarters are located.",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Text(
                  "Meem, which is run by two young professional entrepreneurs Kaihan Hazem and Habib Ullah sharifi, works in a unique way to ensure that we only bring top-notch items to market.",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Text(
                  "MeeM Food is an artisanal nut and dried fruit brand that offers health-conscious consumers tasty, nutrient-dense, organic food sources that are farmed responsibly.",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Padding(padding: EdgeInsets.only(top: 30)),
              Text(
                "Vision",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 219, 197, 96)),
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Color.fromARGB(255, 219, 197, 96),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Text(
                    "MeeM's vision is to become a global brand that is synonymous with high-quality dried fruits."),
              ),
              Text("Mission",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 219, 197, 96))),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Color.fromARGB(255, 219, 197, 96),
              ),
              Text(
                  "To establish a firm foundation of trust to strengthen the global sales and marketing network"),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 219, 197, 96),
              ),
              Text(
                "Policy of Quality",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 219, 197, 96)),
              ),
              Text("MeeM is a brand of 100% organic products.")
            ],
          )),
    );
  }
}
