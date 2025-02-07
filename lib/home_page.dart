import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/bottom_bars/bottom_bar_list_screen.dart';
import 'package:flutter_widgets/screens/buttons_examples_screen.dart';
import 'package:flutter_widgets/screens/cards_examples_screen.dart';
import 'package:flutter_widgets/screens/dialogbox_example_screen.dart';
import 'package:flutter_widgets/screens/extended_floating_btn_ex_screen.dart';
import 'package:flutter_widgets/screens/floating_button_examples_screen.dart';
import 'package:flutter_widgets/screens/simple_input_field_screen.dart';
import 'package:flutter_widgets/screens/snackbars_example_screen.dart';
import 'package:flutter_widgets/widgets/buttons/simple_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: width,
          ),
          SimpleButtonWidget(
            label: 'InputField Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => SimpleInputFieldScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Button Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const ButtonsExamplesScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Floating Button Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const FloatingButtonExamplesScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Extended Floating Button Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const ExtendedFloatingBtnExScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Bottom Navbar Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const BottomBarListScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Sackbars Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const SnackbarsExampleScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Dialogbox Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const DialogboxExampleScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Cards Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const CardsExamplesScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
