import 'package:flutter/material.dart';
import 'package:meem_dry_fruits/screens/about.dart';
import 'package:meem_dry_fruits/screens/contact_us.dart';
import 'package:meem_dry_fruits/screens/home.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 20, vertical: 10);
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 219, 197, 96),
        // color: Colors.white,
        child: ListView(
          padding: padding,
          children: [
            const Padding(padding: EdgeInsets.only(top: 30)),
            const SizedBox(
              height: 48,
            ),
            buildMenuItems(
              text: 'Home',
              icon: Icons.home,
              // onCliked: () => onSelectedItem(context, 0)
            ),
            const SizedBox(
              height: 48,
            ),
            buildMenuItems(text: 'Products', icon: Icons.favorite_border),
            const SizedBox(
              height: 48,
            ),
            buildMenuItems(
              text: 'Contact',
              icon: Icons.contact_phone_outlined,
              // onCliked: onSelectedItem(context, 2)
            ),
            const SizedBox(
              height: 48,
            ),
            buildMenuItems(text: 'About', icon: Icons.info_outline_rounded),
            const Divider(
              color: Colors.white70,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItems(
      {required String text, required IconData icon, VoidCallback? onCliked}) {
    const color = Colors.white;
    const hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onCliked,
    );
  }
}

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
// }
