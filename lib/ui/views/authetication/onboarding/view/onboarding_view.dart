import 'package:e_commerce_app/core/utility/extension/color/color_extension.dart';
import 'package:e_commerce_app/core/utility/extension/context/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utility/extension/language/string_extension.dart';
import '../../../../../product/constant/duration_items.dart';
import '../../../../../product/util/button/custom_elevated_button.dart';
import '../../../../../product/util/widget/onboard_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final AppStringConstants? _appStringConstants = AppStringConstants.instance;
  late PageController _pageController;
  int _activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void _onPageChanged(int index) {
    setState(() {
      _activePage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.padding2xHorizontal,
          child: Column(
            children: [
              Expanded(child: _pageView()),
              Padding(
                padding: context.padding2xVertical + context.padding2xBottom,
                child: _indicatorPageView,
              ),
              Padding(
                padding: context.paddingXHorizontal + context.padding2xBottom,
                child: _nextButton(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _nextButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        color: context.chasm,
        textColor: context.white,
        onPressed: () {
          _pageController.nextPage(
            duration: DurationItems.durationLow(),
            curve: Curves.easeIn,
          );
        },
        title: _appStringConstants!.onBoardingNextButton,
      ),
    );
  }

  PageView _pageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: _onPageChanged,
      children: [
        _onBoardFirst,
        _onBoardSecond,
        _onBoardThird,
      ],
    );
  }

  Widget get _onBoardFirst => OnBoardWidget(
        title: _appStringConstants!.onBoardingTitle1,
        subTitle: _appStringConstants!.onBoardingSubTitle1,
        imagePath: _appStringConstants!.onBoardingImagePath1,
      );
  Widget get _onBoardSecond => OnBoardWidget(
        title: _appStringConstants!.onBoardingTitle2,
        subTitle: _appStringConstants!.onBoardingSubTitle2,
        imagePath: _appStringConstants!.onBoardingImagePath2,
      );
  Widget get _onBoardThird => OnBoardWidget(
        title: _appStringConstants!.onBoardingTitle3,
        subTitle: _appStringConstants!.onBoardingSubTitle3,
        imagePath: _appStringConstants!.onBoardingImagePath3,
      );

  Widget get _indicatorPageView => SizedBox(
      height: context.hw50, width: context.hw100, child: _pageIndicator);

  Widget get _pageIndicator {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: context.paddingLowAll,
          child: CircleAvatar(
            radius: context.hw5,
            backgroundColor:
                index == _activePage ? context.chasm : context.heatherGrey,
          ),
        );
      },
    );
  }
}
