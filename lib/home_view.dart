import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modal/category.dart';
import 'discription_page.dart';  // Import the description_page.dart file

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Category> categoryList = [
    Category(
      imageUrl: "assets/images/yoga.jpg",
      name: "Yoga Exercises",
    ),
    Category(
      imageUrl: "assets/images/b1f.jpg",
      name: "Warmup",
    ),
    Category(
      imageUrl: "assets/images/f2.jpg",
      name: "Legs",
    ),
  ];

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bkg1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hey",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 32,
                          color: Colors.white,
                          letterSpacing: 1.8,
                        ),
                      ),
                      Text(
                        "Manish",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 32,
                          color: Colors.purpleAccent,
                          letterSpacing: 1.8,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        width: 3,
                        color: Color(0xFF40D876),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/don.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.1),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF40D876),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Find",
                            style: GoogleFonts.lato(
                              fontSize: 26,
                              color: Color(0xff40D876),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "Your Workout",
                            style: GoogleFonts.lato(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.filter_alt_outlined,
                        size: 40.0,
                        color: Colors.lightGreenAccent,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width: isExpanded ? 353 : 340,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Color(0xFF232441),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Search Workout",
                              hintStyle: TextStyle(
                                color: Colors.white54,
                              ),
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        width: 90,
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
                            "Popular",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Hard Workout",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Full body",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Crossfit",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Popular",
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          color: Color(0xff40D876),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        "Workout",
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 172,
                              width: 141,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(categoryList[index].imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              categoryList[index].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF232441),
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xFF40D876),
        selectedLabelStyle: TextStyle(color: Color(0xFF40D876)),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics_sharp),
            label: "Workout",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DescriptionPage()),
                );
              },
              child: Icon(Icons.line_axis),
            ),
            label: "Levels",
          ),
        ],
      ),
    );
  }
}
