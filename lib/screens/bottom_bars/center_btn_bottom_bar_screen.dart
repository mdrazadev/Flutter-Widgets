import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/bottom_bars/widgets/bottom_bar_widget.dart';
import 'package:get/get.dart';

class CenterBtnBottomBarScreen extends StatefulWidget {
  const CenterBtnBottomBarScreen({super.key});

  @override
  State<CenterBtnBottomBarScreen> createState() =>
      _CenterBtnBottomBarScreenState();
}

class _CenterBtnBottomBarScreenState extends State<CenterBtnBottomBarScreen> {
  RxInt currentIndex = 0.obs;
  final List<Widget> pagesList = const [
    Text('First Page'),
    Text('Second Page'),
    Text('Third Page'),
    Text('Fourth Page'),
    Text('Fifth Page'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Obx(() => pagesList[currentIndex.value])),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          shape: const CircleBorder(),
          onPressed: () => onTabChange(2),
          child: const Icon(Icons.qr_code, size: 30, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomBarWidget(
        currentIndex: currentIndex,
        onTabPress: onTabChange,
      ),
    );
  }

  onTabChange(int index) {
    currentIndex.value = index;
  }
}
