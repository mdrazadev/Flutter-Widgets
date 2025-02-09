import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/bottom_bars/bottom_bar_list_screen.dart';
import 'package:flutter_widgets/screens/buttons_examples_screen.dart';
import 'package:flutter_widgets/screens/calendar_example_screen.dart';
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
          itemWidget(context, 'InputField Examples', SimpleInputFieldScreen()),
          itemWidget(context, 'Button Examples', const ButtonsExamplesScreen()),
          itemWidget(context, 'Floating Button Examples',
              const FloatingButtonExamplesScreen()),
          itemWidget(context, 'Extended Floating Button Examples',
              const ExtendedFloatingBtnExScreen()),
          itemWidget(
              context, 'Bottom Navbar Examples', const BottomBarListScreen()),
          itemWidget(
              context, 'Sackbars Examples', const SnackbarsExampleScreen()),
          itemWidget(
              context, 'Dialogbox Examples', const DialogboxExampleScreen()),
          itemWidget(context, 'Cards Examples', const CardsExamplesScreen()),
          itemWidget(context, 'Calendar', const CalendarExampleScreen()),
        ],
      ),
    );
  }

  Widget itemWidget(BuildContext context, String label, Widget page) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        SimpleButtonWidget(
          label: label,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => page,
              ),
            );
          },
        ),
      ],
    );
  }
}
