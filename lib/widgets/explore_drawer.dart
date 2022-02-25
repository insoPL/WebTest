import 'package:flutter/material.dart';

class ExploreDrawer extends StatefulWidget {
  const ExploreDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _ExploreDrawerState createState() => _ExploreDrawerState();
}

class _ExploreDrawerState extends State<ExploreDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildSignUpButton(),
              SizedBox(height: 20),
              _buildButton("Strona Główna"),
              _buildPadding(),
              _buildButton("Nasze domy"),
              _buildPadding(),
              _buildButton("Lokalizacja"),
              _buildPadding(),
              _buildButton("Finansowanie"),
              _buildPadding(),
              _buildButton("Kontakt"),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2022 | InsoPL',
                    style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildSignUpButton() {
    return Container(
                  width: double.maxFinite,
                  child: TextButton(
                    // color: Colors.black,
                    // hoverColor: Colors.blueGrey[800],
                    // highlightColor: Colors.blueGrey[700],
                    style: TextButton.styleFrom(
                      primary: Theme.of(context).primaryTextTheme.subtitle1?.color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                     // showDialog(
                     //   context: context,
                    //    builder: (context) => AuthDialog(),
                      ///////////////////////////////////////////////////////);
                    },
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15),
                    // ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                        bottom: 15.0,
                      ),
                      child: Text(
                        'Zaloguj się',
                        style: TextStyle(
                          fontSize: 20,
                            color: Theme.of(context).primaryTextTheme.subtitle1?.color,
                        ),
                      ),
                    ),
                  ),
                );
  }
  InkWell _buildButton(String name){
    return
      InkWell(
        onTap: () {},
        child: Text(
          name,
          style: TextStyle(
              color: Theme.of(context).primaryTextTheme.subtitle1?.color,
              fontSize: 22
          ),
        ),
      );
  }
  Padding _buildPadding() {
    return Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Divider(
              color: Colors.blueGrey[400],
              thickness: 1,
            ),);
  }
}
