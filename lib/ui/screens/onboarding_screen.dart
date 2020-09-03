import 'package:flutter/material.dart';
import 'package:musico/ui/screens/welcome_screen.dart';

import '../../utils/constants.dart';
import '../widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onChangedFunction(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void skip() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => WelcomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: [],
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: onChangedFunction,
              children: [
                PageViewItem(
                  imageLink: 'assets/onboarding1.png',
                  title: 'Feel the vibe',
                  description:
                      'Apart from me, who else loves singing Gospel songs when passing a dark lonely road at night',
                ),
                PageViewItem(
                  imageLink: 'assets/onboarding2.png',
                  title: 'Feel the flow',
                  description:
                      'Apart from me, who else loves singing Gospel songs when passing a dark lonely road at night',
                ),
                PageViewItem(
                  imageLink: 'assets/onboarding1.png',
                  title: 'Enjoy the note',
                  description:
                      'Apart from me, who else loves singing Gospel songs when passing a dark lonely road at night',
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PageIndicator(currentIndex: _currentIndex),
                    FlatButton(
                      child: Text(
                        'SKIP',
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: skip,
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageViewItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageLink;

  const PageViewItem({
    Key key,
    @required this.imageLink,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageLink),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.music_note,
            size: 80,
            color: kPrimary,
          ),
          SizedBox(height: 30),
          Text(
            title,
            style: Theme.of(context).textTheme.headline3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: 15),
          Container(
            width: 140,
            height: 8,
            decoration: BoxDecoration(
              color: kPrimary,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
