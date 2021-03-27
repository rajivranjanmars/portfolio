
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio_page.dart';

// void main () {

// }

void main() => runApp(PortfolioApp());

class PortfolioApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortfolioPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
