import 'package:flutter/material.dart';
import 'package:meem_dry_fruits/screens/about.dart';
import 'package:meem_dry_fruits/screens/home.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 20, vertical: 10);
    return Drawer(
      child: Material(
        color: const Color.fromARGB(255, 219, 197, 96),
        // color: Colors.white,
        child: ListView(
          padding: padding,
          children: [
            const Padding(padding: EdgeInsets.only(top: 40)),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const Home(title: "Home")));
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.info),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              },
            ),
            const SizedBox(
              height: 48,
            ),
            const Divider(
              color: Colors.white70,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildMenuItems(
  //     {required String text, required IconData icon, VoidCallback? onCliked}) {
  //   const color = Colors.white;
  //   const hoverColor = Colors.white70;
  //   return ListTile(
  //     leading: Icon(icon, color: color),
  //     title: Text(text, style: const TextStyle(color: color)),
  //     hoverColor: hoverColor,
  //     onTap: onCliked,
  //   );
  // }

//   onSelectedItem(BuildContext context, int i) {
//     switch (i) {
//       case 1:
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const Home(title: "Home")));
//         break;

//       case 2:
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const AboutPage()));
//     }
//   }
// }

// onSelectedItem(BuildContext context, int index) {
//   switch (index) {
//     case 0:
//       Navigator.of(context).push(
//           MaterialPageRoute(builder: (context) => const Home(title: "MeeM")));

//       break;
//     case 2:
//       Navigator.of(context)
//           .push(MaterialPageRoute(builder: (context) => const ContactUs()));
//       break;
//     case 3:
//       Navigator.of(context)
//           .push(MaterialPageRoute(builder: (context) => const AboutPage()));
//       break;
//   }

  onItemClick(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Home(title: "Home")));
        Navigator.pop(context);
        break;

      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AboutPage()));
        Navigator.pop(context);
        break;
    }
  }
}
