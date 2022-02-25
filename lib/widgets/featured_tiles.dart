import 'package:home_website/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/dach.jpg',
    'assets/images/piwnica.jpg',
    'assets/images/drzwi.jpg',
  ];

  final List<String> title = ['Pompa ciepła\n', 'Dojazd\n', 'Innowacyjność\n'];
  final List<String> subtitle = [
    'Najwyższa wydajność renomowanej firmy. Gwarancją jakości i ciepłego pomieszczenia przez cały rok',
    'Spokojna i zielona okolica na zachodzie Wrocławia. Doskonała komunikacja',
    'Zastosowaliśmy nowe i energooszczędne technologie budownictwa w celu najwyższego komfortu i niższego zużycia energii'
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                      (int pageIndex) =>
                          _buildCard(pageIndex, context, 2.5, 1.5)),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (int pageIndex) => _buildCard(pageIndex, context, 6, 3.8),
                ),
              ],
            ),
          );
  }

  Card _buildCard(
      int pageIndex, BuildContext context, double imgSizeX, double imgSizeY) {
    return Card(
      elevation: 5.0,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          SizedBox(
            height: screenSize.width / imgSizeX,
            width: screenSize.width / imgSizeY,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                assets[pageIndex],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: screenSize.width / imgSizeY,
            child: Text.rich(
              TextSpan(
                text: '',
                children: <TextSpan>[
                  TextSpan(
                      text: title[pageIndex],
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                      )),
                  TextSpan(text: subtitle[pageIndex]),
                ],
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w100,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
