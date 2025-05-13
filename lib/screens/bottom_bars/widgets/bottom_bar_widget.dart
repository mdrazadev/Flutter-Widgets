import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTabPress,
  });
  final RxInt currentIndex;
  final Function(int ind) onTabPress;

  Widget buildNavItem(IconData icon, IconData selectedIcon, int index) {
    return Obx(
      () => IconButton(
        padding: const EdgeInsets.all(0),
        selectedIcon: Icon(
          selectedIcon,
          size: 30,
          color: Colors.blue,
        ),
        isSelected: currentIndex.value == index,
        icon: Icon(
          icon,
          color: currentIndex.value == index ? Colors.blue : Colors.grey,
          size: 30,
        ),
        onPressed: () => onTabPress(index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: SizedBox(
        // height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(Icons.home_outlined, Icons.home, 0),
            buildNavItem(Icons.swipe_outlined, Icons.swipe, 1),
            const SizedBox(width: 30), // Space for the FAB
            buildNavItem(
              Icons.settings_outlined,
              Icons.settings,
              3,
            ),
            buildNavItem(
              Icons.person_outline_rounded,
              Icons.person,
              4,
            ),
          ],
        ),
      ),
    );
  }
}
