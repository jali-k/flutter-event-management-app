import 'package:flutter/material.dart';

class TrapezoidalImage extends StatelessWidget {
  const TrapezoidalImage({super.key});

  @override
  Widget build(BuildContext context) {

    return ClipPath(
      clipper: TrapezoidClipper(),
      child: Image.asset(
        'assets/images/OIP.jpeg',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4, // Adjust height as needed
        fit: BoxFit.cover,
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height *0.75);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class TrapezoidClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, size.height);
//     path.lineTo(size.width, size.height * (2 / 3));
//     path.lineTo(size.width, size.height * 0.5);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }