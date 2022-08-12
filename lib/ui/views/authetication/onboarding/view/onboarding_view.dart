import 'package:auto_route/auto_route.dart';
import '../../../../../product/navigation/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/extension/color_extension.dart';
import '../../../../../core/constants/extension/context_extension.dart';
import '../../../../../product/constants/duration_items.dart';
import '../../../../../product/util/button/custom_elevated_button.dart';
import '../../../../../product/util/widget/onboard_widget.dart';
import '../viewmodel/onboarding_viewmodel.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends OnBoardingViewModel {
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
          pageController.nextPage(
            duration: DurationItems.durationLow(),
            curve: Curves.easeIn,
          );
          Future.microtask(
            () {
              if (activePage == (context.onBoardPageCount - 1)) {
                context.router.push( LoginRoute());
              }
            },
          );
        },
        title: appStringConstants!.onBoardingNextButton,
      ),
    );
  }

  PageView _pageView() {
    return PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: [
        _onBoardFirst,
        _onBoardSecond,
        _onBoardThird,
      ],
    );
  }

  Widget get _onBoardFirst => OnBoardWidget(
        title: appStringConstants!.onBoardingTitle1,
        subTitle: appStringConstants!.onBoardingSubTitle1,
        imagePath: appStringConstants!.onBoardingImagePath1,
      );
  Widget get _onBoardSecond => OnBoardWidget(
        title: appStringConstants!.onBoardingTitle2,
        subTitle: appStringConstants!.onBoardingSubTitle2,
        imagePath: appStringConstants!.onBoardingImagePath2,
      );
  Widget get _onBoardThird => OnBoardWidget(
        title: appStringConstants!.onBoardingTitle3,
        subTitle: appStringConstants!.onBoardingSubTitle3,
        imagePath: appStringConstants!.onBoardingImagePath3,
      );

  Widget get _indicatorPageView => SizedBox(
      height: context.hw50, width: context.hw100, child: _pageIndicator);

  Widget get _pageIndicator {
    return ListView.builder(
      itemCount: context.onBoardPageCount,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: context.paddingLowAll,
          child: CircleAvatar(
            radius: context.hw5,
            backgroundColor:
                index == activePage ? context.chasm : context.heatherGrey,
          ),
        );
      },
    );
  }
}
