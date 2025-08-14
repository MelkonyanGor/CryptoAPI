import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/screenes/crypto_coin_screen.dart';
import 'package:rick_and_morty_api/screenes/crypto_list_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CryptoListRoute.page, initial: true),
    AutoRoute(page: CryptoCoinRoute.page),
  ];
}
