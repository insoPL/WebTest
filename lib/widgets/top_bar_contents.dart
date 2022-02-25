import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:home_website/screens/home_page.dart';
import 'package:home_website/utils/authentication.dart';
import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  
  int buttonCount=0;

  InkWell _topBarButton(String name) {
    int buttonNumber = buttonCount++;
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? _isHovering[buttonNumber] = true : _isHovering[buttonNumber] = false;
        });
      },
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: _isHovering[buttonNumber] ? Theme.of(context).primaryTextTheme.subtitle2?.color : Theme.of(context).primaryTextTheme.subtitle1?.color,
            ),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isHovering[buttonNumber],
            child: Container(
              height: 2,
              width: 30,
              color: Theme.of(context).primaryTextTheme.subtitle2?.color,
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    buttonCount = 0;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Theme.of(context).bottomAppBarColor.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                const TextSpan(
                  text: '',
                  children: <TextSpan>[
                    TextSpan(text: 'MPB', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'development'),
                  ],

                ),

                style: TextStyle(
                  color: Theme.of(context).primaryTextTheme.headline1?.color,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w100,
                  letterSpacing: 1,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _topBarButton("Strona Głowna"),
                    SizedBox(width: screenSize.width / 30),
                    _topBarButton("Nasze domy"),
                    SizedBox(width: screenSize.width / 30),
                    _topBarButton("Lokalizacja"),
                    SizedBox(width: screenSize.width / 30),
                    _topBarButton("Finansowanie"),
                    SizedBox(width: screenSize.width / 30),
                    _topBarButton("Kontakt"),
                    SizedBox(width: screenSize.width / 30),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.brightness_6),
                tooltip: 'Tryb Nocny',
                color: Theme.of(context).iconTheme.color,
                onPressed: () {
                  EasyDynamicTheme.of(context).changeTheme();
                },
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              _topBarButton("Zaloguj się"),
            ],
          ),
        ),
      ),
    );
  }
}
