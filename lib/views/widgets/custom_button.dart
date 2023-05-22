import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Function? onTap;
  final LinearGradient? color;

  const CustomButton({Key? key, required this.text, this.onTap, this.color})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap!();
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), gradient: widget.color,),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontFamily: 'Acumin',
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
