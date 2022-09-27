import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/navigation_controller.dart';
import 'package:quiz_app/utils/app_style.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);
  final NavigationController navigationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      margin: const EdgeInsets.all(AppStyle.padddin / 2),
      padding: const EdgeInsets.all(AppStyle.padddin / 3),
      decoration: BoxDecoration(
        color: AppStyle.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 4,
            color: const Color(0xff7D7D7D).withOpacity(0.2),
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonBar(
              selectedIcon: SvgPicture.asset('assets/icons/home.svg'),
              unselectedIcon:
                  SvgPicture.asset('assets/icons/home-outlined.svg'),
              text: 'المنزل',
              isSelected:
                  navigationController.selectedIndex.value == 0 ? true : false,
              onPressed: () {
                navigationController.changeScreen(0);
              },
            ),
            IconButtonBar(
              selectedIcon: const Icon(
                Icons.leaderboard,
                color: AppStyle.primaryColor,
              ),
              unselectedIcon: const Icon(Icons.leaderboard_outlined),
              text: 'قائمة المتصدرين',
              isSelected:
                  navigationController.selectedIndex.value == 1 ? true : false,
              onPressed: () {
                navigationController.changeScreen(1);
              },
            ),
            IconButtonBar(
              selectedIcon: SvgPicture.asset('assets/icons/profile.svg'),
              unselectedIcon:
                  SvgPicture.asset('assets/icons/profile-outlined.svg'),
              text: 'حسابي',
              isSelected:
                  navigationController.selectedIndex.value == 2 ? true : false,
              onPressed: () {
                navigationController.changeScreen(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class IconButtonBar extends StatelessWidget {
  final String text;
  final dynamic selectedIcon;
  final dynamic unselectedIcon;
  final bool isSelected;
  final Function onPressed;
  const IconButtonBar({
    Key? key,
    required this.text,
    this.selectedIcon,
    this.unselectedIcon,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: SizedBox(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isSelected ? selectedIcon : unselectedIcon,
            const SizedBox(
              height: 5,
            ),
            isSelected
                ? Text(text,
                    style: const TextStyle(
                        color: AppStyle.primaryColor,
                        fontWeight: FontWeight.w500))
                : Container(),
          ],
        ),
      ),
    );
  }
}
