import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to Musico',
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(height: 20),
              Text(
                'Apart from me, who else loves singing Gospel songs when Passing a dark lonely road at night',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Builder(
                builder: (context) => RaisedButton(
                  child: Text('IMPORT SONGS'),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(
                        'No Song to Import',
                        style: TextStyle(color: Colors.black),
                      ),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: kPrimary,
                    ));
                  },
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  color: kPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              ),
              SizedBox(height: 40),
              FlatButton(
                child: Text(
                  'SKIP',
                  style: TextStyle(fontSize: 16),
                ),
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(height: 100),
              IconButton(
                icon: Icon(
                  Icons.cancel,
                  color: kPrimary,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
