// lib/features/sign_up/ui/detail_input_field.dart
import 'package:flutter/material.dart';

class DetailInputField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final Function? onTap;
  final TextEditingController controller;

  const DetailInputField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.keyboardType,
    this.onTap,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70,
              child: Text(
                label,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400, // Regular weight
                  color: Color(0xFFFF9933),
                  fontFamily: 'Inter',
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 50,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide(color: Color(0xFFFF9933), width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide(color: Color(0xFFFF9933), width: 2.0),
                    ),
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.white70, fontFamily: 'Inter'),
                  ),
                  keyboardType: keyboardType,
                  style: TextStyle(color: Colors.white, fontFamily: 'Inter'),
                  readOnly: onTap != null,
                  onTap: onTap != null ? () => onTap!(context) : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
