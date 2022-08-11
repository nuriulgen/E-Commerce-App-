import 'package:e_commerce_app/ui/views/authetication/onboarding/view/onboarding_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_app/ui/views/home/search_view.dart';
import 'package:flutter/material.dart';

import '../../ui/views/authetication/login/view/login_view.dart';
import '../../ui/views/home/home/view/home_detail_view.dart';
import '../../ui/views/home/home/view/home_view.dart';
import '../../ui/views/home/home/view/new_trend_view_detail.dart';
import '../../ui/views/home/profile/view/add_gifts_cards_view.dart';
import '../../ui/views/home/profile/view/add_payment_view.dart';
import '../../ui/views/home/profile/view/gift_card_view.dart';
import '../../ui/views/home/profile/view/my_orders_view.dart';
import '../../ui/views/home/profile/view/profile_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: OnBoardingView, path: 'onBoard', initial: true),
    AutoRoute(page: LoginView, path: 'login'),
    // AutoRoute(page: CustomNavigationBar, path: 'navigation'),
    AutoRoute(
      name: 'HomeFullRoute',
      page: EmptyPageRouter,
      children: [
        AutoRoute(page: HomeView, path: 'home', initial: true),
        AutoRoute(page: HomeDetailView, path: 'detail'),
        AutoRoute(page: NewTrendViewDetail, path: 'newdetail'),
      ],
    ),
    AutoRoute(
      name: 'ProfilFullRoute',
      page: EmptyPageRouter,
      children: [
        AutoRoute(page: ProfileView, path: 'profil', initial: true),
        AutoRoute(page: MyOrdersView, path: 'detail'),
        AutoRoute(page: GiftCardView, path: 'giftCard'),
        AutoRoute(page: AddGiftCardsView, path: 'addGift'),
        AutoRoute(page: AdressBookView, path: 'adress'),
        AutoRoute(page: AddPaymentDetail, path: 'paymentDetail'),
      ],
    ),
    AutoRoute(page: SearchView, path: 'search'),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({super.key});
}
