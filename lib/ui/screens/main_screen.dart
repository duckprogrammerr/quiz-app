import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/navigation_controller.dart';
import 'package:quiz_app/controllers/quiz_controller.dart';
import 'package:quiz_app/ui/screens/home_screen.dart';
import 'package:quiz_app/ui/screens/leaderboard_screen.dart';
import 'package:quiz_app/ui/screens/profile_screen.dart';
import 'package:quiz_app/ui/widgets/custom_bottom_navigationbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  NavigationController navigationController = Get.put(NavigationController());
  QuizController quizController = Get.put(QuizController());
  List<Widget> screens = [
    const HomeScreen(),
    LeaderboradScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          body: Stack(
        children: [
          screens[navigationController.selectedIndex.value],
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationBar(),
          ),
        ],
      )),
    );
  }
}
