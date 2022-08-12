// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    OnBoardingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const OnBoardingView());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: LoginView(key: args.key));
    },
    HomeFullRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyPageRouter());
    },
    ProfilFullRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyPageRouter());
    },
    SearchRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SearchView());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeView());
    },
    HomeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailRouteArgs>(
          orElse: () => const HomeDetailRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomeDetailView(key: args.key, jsonData: args.jsonData));
    },
    NewTrendRouteDetail.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NewTrendViewDetail());
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfileView());
    },
    MyOrdersRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MyOrdersView());
    },
    GiftCardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const GiftCardView());
    },
    AddGiftCardsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AddGiftCardsView());
    },
    AdressBookRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AdressBookView());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: 'onBoard', fullMatch: true),
        RouteConfig(OnBoardingRoute.name, path: 'onBoard'),
        RouteConfig(LoginRoute.name, path: 'login'),
        RouteConfig(HomeFullRoute.name, path: '/empty-page-router', children: [
          RouteConfig('#redirect',
              path: '',
              parent: HomeFullRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          RouteConfig(HomeRoute.name, path: 'home', parent: HomeFullRoute.name),
          RouteConfig(HomeDetailRoute.name,
              path: 'detail', parent: HomeFullRoute.name),
          RouteConfig(NewTrendRouteDetail.name,
              path: 'newdetail', parent: HomeFullRoute.name)
        ]),
        RouteConfig(ProfilFullRoute.name,
            path: '/empty-page-router',
            children: [
              RouteConfig('#redirect',
                  path: '',
                  parent: ProfilFullRoute.name,
                  redirectTo: 'profil',
                  fullMatch: true),
              RouteConfig(ProfileRoute.name,
                  path: 'profil', parent: ProfilFullRoute.name),
              RouteConfig(MyOrdersRoute.name,
                  path: 'detail', parent: ProfilFullRoute.name),
              RouteConfig(GiftCardRoute.name,
                  path: 'giftCard', parent: ProfilFullRoute.name),
              RouteConfig(AddGiftCardsRoute.name,
                  path: 'addGift', parent: ProfilFullRoute.name),
              RouteConfig(AdressBookRoute.name,
                  path: 'adress', parent: ProfilFullRoute.name)
            ]),
        RouteConfig(SearchRoute.name, path: 'search')
      ];
}

/// generated route for
/// [OnBoardingView]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: 'onBoard');

  static const String name = 'OnBoardingRoute';
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key})
      : super(LoginRoute.name, path: 'login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EmptyPageRouter]
class HomeFullRoute extends PageRouteInfo<void> {
  const HomeFullRoute({List<PageRouteInfo>? children})
      : super(HomeFullRoute.name,
            path: '/empty-page-router', initialChildren: children);

  static const String name = 'HomeFullRoute';
}

/// generated route for
/// [EmptyPageRouter]
class ProfilFullRoute extends PageRouteInfo<void> {
  const ProfilFullRoute({List<PageRouteInfo>? children})
      : super(ProfilFullRoute.name,
            path: '/empty-page-router', initialChildren: children);

  static const String name = 'ProfilFullRoute';
}

/// generated route for
/// [SearchView]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [HomeDetailView]
class HomeDetailRoute extends PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({Key? key, List<dynamic>? jsonData})
      : super(HomeDetailRoute.name,
            path: 'detail',
            args: HomeDetailRouteArgs(key: key, jsonData: jsonData));

  static const String name = 'HomeDetailRoute';
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({this.key, this.jsonData});

  final Key? key;

  final List<dynamic>? jsonData;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{key: $key, jsonData: $jsonData}';
  }
}

/// generated route for
/// [NewTrendViewDetail]
class NewTrendRouteDetail extends PageRouteInfo<void> {
  const NewTrendRouteDetail()
      : super(NewTrendRouteDetail.name, path: 'newdetail');

  static const String name = 'NewTrendRouteDetail';
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profil');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [MyOrdersView]
class MyOrdersRoute extends PageRouteInfo<void> {
  const MyOrdersRoute() : super(MyOrdersRoute.name, path: 'detail');

  static const String name = 'MyOrdersRoute';
}

/// generated route for
/// [GiftCardView]
class GiftCardRoute extends PageRouteInfo<void> {
  const GiftCardRoute() : super(GiftCardRoute.name, path: 'giftCard');

  static const String name = 'GiftCardRoute';
}

/// generated route for
/// [AddGiftCardsView]
class AddGiftCardsRoute extends PageRouteInfo<void> {
  const AddGiftCardsRoute() : super(AddGiftCardsRoute.name, path: 'addGift');

  static const String name = 'AddGiftCardsRoute';
}

/// generated route for
/// [AdressBookView]
class AdressBookRoute extends PageRouteInfo<void> {
  const AdressBookRoute() : super(AdressBookRoute.name, path: 'adress');

  static const String name = 'AdressBookRoute';
}
