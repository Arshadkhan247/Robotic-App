import 'package:flutter/material.dart';
import 'package:lab_lms/Screens/reading_screen.dart';
import 'package:lab_lms/comman_widgets/home_card_widget.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  // int _currentIndex = 0;
  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 249, 255),
        appBar: AppBar(
          elevation: 10,
          backgroundColor: const Color.fromARGB(255, 95, 127, 202),
          centerTitle: true,
          title: const Text('Home Section'),
          actions: const [
            Icon(
              Icons.search,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.menu,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                HomeCardWidget(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ReadingScreen(),
                      ),
                    );
                  },
                  img: 'assets/circuit4.jpg',
                  levelText: 'Level 1 For Bigginners',
                  opacity: 0.8,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                HomeCardWidget(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ReadingScreen(),
                      ),
                    );
                  },
                  img: 'assets/Robotic.jpg',
                  levelText: 'Level 2 For Intermediate',
                  opacity: 0.9,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                HomeCardWidget(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ReadingScreen(),
                      ),
                    );
                  },
                  img: 'assets/Robotic3.jpg',
                  levelText: 'Level 3 For Advance',
                  opacity: 0.9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// bottomNavigationBar: BottomNavigationBar(
        //     backgroundColor: const Color.fromARGB(255, 95, 127, 202),
        //     iconSize: 30,
        //     selectedItemColor: Colors.white,
        //     currentIndex: _currentIndex,
        //     onTap: onTabTapped,
        //     items: const [
        //       BottomNavigationBarItem(
        //           icon: Icon(
        //             Icons.home_filled,
        //           ),
        //           label: 'Home'),
        //       BottomNavigationBarItem(
        //           icon: Icon(
        //             Icons.search,
        //           ),
        //           label: 'Search'),
        //     ]),
