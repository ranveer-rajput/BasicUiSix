import 'package:flutter/material.dart';
import 'package:flutter_application_6/colors.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amber.shade200),
              child: const Icon(Icons.home_outlined),
            ),
            const Icon(
              Icons.calendar_month,
              color: Colors.white,
              size: 30,
            ),
            Transform.rotate(
              angle: 45 *
                  (3.14 / 180), // Rotate the icon by 45 degrees (in radians)
              child: const Icon(
                Icons.incomplete_circle,
                color: Colors.white,
                size: 30,
              ),
            ),
            const Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "DashBoard",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: color,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.59,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Good Morning,\nRanveer",
              style: TextStyle(
                  fontSize: 35, color: color, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "THIS WEEKS INSIGHTS",
              style: TextStyle(
                  fontWeight: FontWeight.w800, color: color, fontSize: 15),
            ),
            const SizedBox(
              height: 6,
            ),
            const Row(
              children: [
                NewWidget(
                    color: Color.fromARGB(255, 244, 212, 118),
                    text1: "3 DAYS",
                    text2: "Streak",
                    icon: Icons.star_rate),
                SizedBox(
                  width: 14,
                ),
                NewWidget(
                    color: Colors.green,
                    text1: "148",
                    text2: "Completed",
                    icon: Icons.done)
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            Text(
              "TODAYS SCHEDULE",
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 16, color: color),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                const NewWidgetTwo(
                    iconData: Icons.wallet_giftcard_rounded,
                    color: Color.fromARGB(255, 221, 162, 120),
                    text1: "42",
                    text2: "deleveries"),
                const SizedBox(
                  width: 14,
                ),
                NewWidgetTwo(
                    iconData: Icons.watch_later_outlined,
                    color: Colors.blue.shade400,
                    text1: "7hr 20m",
                    text2: "Estimated time"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.079,
              width: MediaQuery.of(context).size.width * 0.91,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(14),
                color: const Color.fromARGB(255, 13, 22, 52),
              ),
              child: const Center(
                child: Text(
                  "Start Shift",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidgetTwo extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String text1;
  final String text2;

  const NewWidgetTwo({
    super.key,
    required this.iconData,
    required this.color,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color.fromARGB(255, 243, 241, 237),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 19),
        child: Column(
          children: [
            Icon(
              iconData,
              size: 100,
              color: color,
            ),
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
            Text(
              text2,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final IconData icon;
  const NewWidget({
    super.key,
    required this.color,
    required this.text1,
    required this.text2,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 243, 241, 237),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Icon(icon),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
