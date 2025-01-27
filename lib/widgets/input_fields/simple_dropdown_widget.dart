import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/drop_down_list_model.dart';
import 'package:get/get.dart';

class SimpleDropdownWidget extends StatelessWidget {
  const SimpleDropdownWidget({
    super.key,
    required this.list,
    required this.value,
    this.width,
    this.height,
    this.focusNode,
  });

  final List<DropDownListModel> list;
  final RxInt value;
  final double? width;
  final double? height;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    double ht = MediaQuery.of(context).size.height;
    return Container(
      width: width ?? (wt * 0.1),
      height: height ?? (ht * 0.1),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonHideUnderline(
        child: Obx(
          () => DropdownButton(
            style: const TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 17, 17, 17),
              fontWeight: FontWeight.w400,
            ),
            isExpanded: true,
            focusNode: focusNode,
            value: value.value,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            iconEnabledColor: Colors.black,
            items: list
                .map(
                  (item) => DropdownMenuItem(
                    value: item.id,
                    child: Text(
                      item.name.toString(),
                    ),
                  ),
                )
                .toList(),
            onChanged: (val) {
              if (val != null) {
                value.value = val;
              }
            },
          ),
        ),
      ),
    );
  }
}
