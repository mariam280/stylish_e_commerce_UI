import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/screens/login_screen.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/widgets/intro_view_row_bottom.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/widgets/onboard_item_page_view.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/widgets/onboard_screen_header.dart';

class OnBoardViewBody extends StatelessWidget {
  const OnBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardPageView(),
    );
  }
}

class OnBoardPageView extends StatefulWidget {
  const OnBoardPageView({super.key});

  @override
  State<OnBoardPageView> createState() => _OnBoardPageViewState();
}

class _OnBoardPageViewState extends State<OnBoardPageView> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardItemPageView(
          pageController: pageController,
        ),
        Positioned(
           right: 10,
            left: 10,
            top: 20,
          child: OnboardScreenHeader(pageNumber: currentPageIndex+1)),
        Positioned(
            right: 10,
            left: 10,
            bottom: 10,
            child: IntroViewRowBottom(
              currentPageIndex: currentPageIndex,
              onTapBack: () {
                pageController.animateToPage(currentPageIndex - 1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
              onTapNext: () {
                if (currentPageIndex == 2) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                } else {
                  pageController.animateToPage(currentPageIndex + 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                }
              },
              next: currentPageIndex == 2 ? S.of(context).getStarted : S.of(context).next,
              back: currentPageIndex == 0 ? '' : S.of(context).prev,
            ))
      ],
    );
  }
}
