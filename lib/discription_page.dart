import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  String dummyText = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit... There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pullm.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Color(0xff40D876),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(
                      child: Text(
                        "3 Hours",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.dangerous,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 1),
                    Container(
                      height: 365,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(26.0),
                        border: Border.all(color: Colors.white54),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildInfoRow("12", "Sets"),
                          buildInfoRow("5", "Sets"),
                          buildInfoRow("18", "Moves"),
                        ],
                      ),
                    ),
                    Spacer(flex: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildCategoryButton("Popular"),
                        SizedBox(width: 10),
                        buildCategoryButton("Workout"),
                      ],
                    ),
                    Spacer(flex: 1),
                    buildRatingStars(),
                    Spacer(flex: 1),
                    buildTabBar(),
                    Spacer(flex: 1),
                    Text(
                      dummyText,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Spacer(flex: 1),
                    buildTrialButton(),
                    Spacer(flex: 3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(String number, String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number,
          style: GoogleFonts.bebasNeue(
            fontSize: 24,
            color: Color(0xFF40D876),
            decoration: TextDecoration.none,
          ),
        ),
        SizedBox(width: 6.0),
        Text(
          label,
          style: GoogleFonts.bebasNeue(
            fontSize: 24,
            color: Color(0xFF40D876),
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }

  Container buildCategoryButton(String label) {
    return Container(
      height: 40,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(40.0),
        border: Border.all(
          width: 3,
          color: Color(0xff40d876),
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.lato(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }

  Row buildRatingStars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.amber, size: 30),
        Icon(Icons.star, color: Colors.amber, size: 30),
        Icon(Icons.star, color: Colors.amber, size: 30),
        Icon(Icons.star_border, color: Colors.grey, size: 30),
        Icon(Icons.star_border, color: Colors.grey, size: 30),
      ],
    );
  }

  Row buildTabBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildTab("Description", isActive: true),
        buildTab("Feedback", isActive: false),
        buildTab("Related", isActive: false),
      ],
    );
  }

  Column buildTab(String label, {required bool isActive}) {
    return Column(
      children: [
        Text(
          label,
          style: GoogleFonts.lato(
            fontSize: 16,
            color: isActive ? Colors.white : Colors.white,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            decoration: TextDecoration.none,
          ),
        ),
        if (isActive)
          Container(
            margin: const EdgeInsets.only(top: 4.0),
            height: 2,
            width: 30,
            color: Color(0xFF40D876),
          ),
      ],
    );
  }

  Container buildTrialButton() {
    return Container(
      width: 220,
      height: 49,
      decoration: BoxDecoration(
        color: Color(0xFF40D876),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          "Trial fees RS 1000.00",
          style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
