import 'package:flutter/material.dart';


class ListingCustomClipperWidget extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final Path path = new Path();
    path.lineTo(0.0, size.height);
    final firstEndPoint = Offset(size.width * 0.5, size.height - 20);
    final firstControlPoint = Offset(size.width * 0.25, size.height - 40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    final secondEndPoint = Offset(size.width, size.height - 60);
    final secondControlPoint = Offset(size.width * 0.75, size.height - 8);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}