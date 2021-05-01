import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/onboarding_model.dart';
import '../pages/login_page.dart';
import '../pages/registration_page.dart';
import '../widgets/custom_text_button.dart';
import 'change_screen.dart';

class OnboardingScreen extends StatefulWidget {
  final List<OnboardingModel> pages;
  final Color bgColor;
  final Color themeColor;

  final Function getStartedClicked;

  OnboardingScreen({
    Key key,
    @required this.pages,
    @required this.bgColor,
    @required this.themeColor,
    @required this.getStartedClicked,
  }) : super(key: key);

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < widget.pages.length; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  List<Widget> buildOnboardingPages() {
    final children = <Widget>[];

    for (int i = 0; i < widget.pages.length; i++) {
      children.add(_showPageData(widget.pages[i]));
    }
    return children;
  }

  @override
  void initState() {
    super.initState();
  }

  Widget _indicator(bool isActive) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: isActive
          ? BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              border: Border.all(color: widget.themeColor),
            )
          : null,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        height: isActive ? 10.0 : 12.0,
        width: isActive ? 10.0 : 12.0,
        decoration: BoxDecoration(
          color: isActive ? widget.themeColor : Color(0xffe5e5e5),
          borderRadius: BorderRadius.all(Radius.circular(18)),
          border: Border.all(color: widget.themeColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 68,
                  ),
                  Container(
                    height: 500.0,
                    color: Colors.transparent,
                    child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: buildOnboardingPages()),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  CustomTextButton(
                    text: 'Get Started',
                    textColor: Colors.white,
                    containerColor: Color(0xff322244),
                    onTap: () {
                      changeScreen(RegistrationPage(), context);
                    },
                  ),
                  SizedBox(height: 14),
                  CustomTextButton(
                    containerColor: Color(0xffffffff),
                    text: 'Login To Account',
                    textColor: Color(0xff322644),
                    onTap: () {
                      changeScreen(LoginPage(), context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _showPageData(OnboardingModel page) {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        decoration: BoxDecoration(
          color: Color(0xffe5e5e9),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16),
              Center(
                child: Image(
                  image: AssetImage(page.imagePath),
                  height: 300.0,
                  width: 300.0,
                ),
              ),
              SizedBox(height: 42.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              SizedBox(height: 18.0),
              Center(
                child: Text(
                  page.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: page.titleColor,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 2.0),
              Center(
                child: Text(
                  page.description,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: page.descripColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
