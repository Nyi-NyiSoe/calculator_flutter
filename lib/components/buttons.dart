import 'package:flutter/material.dart';

class ButtonsComponent extends StatelessWidget {
  final String buttonText;
  final buttonColor;
  final textColor;
  final void Function()? onTap;

  const ButtonsComponent(
      {super.key,
       this.buttonColor,
      required this.buttonText,
       this.textColor,
       this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: buttonColor,
            child: Center(
                child: Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 20),
            )),
          ),
        ),
      ),
    );
  }
}
