
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {

  final Function? onTap;
  final TextEditingController? controller;
  final Widget? label;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Widget? suffixIcon;
  final Widget? suffix;
  final bool obsecureText;
  final  keyboardType;
   double height;
    bool? readOnly;
   final int? maxLines;
  final int? minLines;

  CustomTextField(
      {Key? key,
       this.onTap,
      this.controller,
      this.label,
      this.labelText,
      this.hintText,
      this.prefixIcon,
      this.prefix,
      this.suffixIcon,
      this.suffix,
      required this.height,
      required this.obsecureText, this.keyboardType, this.maxLines, this.minLines, this.readOnly})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        maxLines: maxLines,
        minLines: minLines,
        readOnly: readOnly == null?false:true,

        keyboardType: keyboardType,
        cursorColor: Colors.black,
        cursorHeight: 20,
        textDirection:TextDirection.ltr,
        textAlign: TextAlign.start,
        obscureText: obsecureText,
        style: const TextStyle(color: Colors.black,fontSize: 16,overflow: TextOverflow.ellipsis,
        fontFamily: 'Acumin',
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
        ),

        onTap: (){onTap;},
        controller: controller,
        decoration: InputDecoration(
           alignLabelWithHint: true,
          fillColor: Color(0xFFF7F7FA),
          contentPadding: const EdgeInsets.only(left: 10),
          filled: true,

          enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xFFF7F7FA)),),

          focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xFFF7F7FA)),),

          labelText: labelText,
          label: label,
          prefix: prefix,
          prefixIcon: prefixIcon,
          suffix: suffix,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w400),

          constraints: BoxConstraints(maxHeight: height ?? 60),





          // contentPadding: EdgeInsets.only(left: 10)

        ),

      ),
    );
  }
}
