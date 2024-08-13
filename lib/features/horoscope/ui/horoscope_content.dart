import 'package:flutter/material.dart';

class HoroscopeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: screenWidth * 0.3,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xFFFF9933), // Border color
              width: 2, // Border width
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/images/horoscope2.png',
              width: screenWidth * 0.2,
              height: screenWidth * 0.2,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 16), // Space between image and text
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
          child: Text(
            'Events involving the arts or spiritual studies could take place today. You might be put in contact with new people who share your interests. Love and romance could take on a fairytale aura, Virgo. You might view current and potential love partners through rose-colored glasses, seeing only their endearing traits. This is fine, and you should enjoy it as long as you don\'t get caught up in unrealistic expectations. They\'re human just like everyone else.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.040,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ],
    );
  }
}
