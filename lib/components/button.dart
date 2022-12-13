import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  ButtonWidget(
      {super.key,
        required this.height,
        required this.color,
        required this.title,
        required this.onClick});

  double? height;
  Color? color;
  String? title;
  VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: MediaQuery.of(context).size.height * height!,
        width: MediaQuery.of(context).size.width * double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(
          child: Text(
            title!,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
