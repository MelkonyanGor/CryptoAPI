// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CryptoCoinScreen]
class CryptoCoinRoute extends PageRouteInfo<CryptoCoinRouteArgs> {
  CryptoCoinRoute({
    required CryptoCoinModel coin,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         CryptoCoinRoute.name,
         args: CryptoCoinRouteArgs(coin: coin, key: key),
         initialChildren: children,
       );

  static const String name = 'CryptoCoinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CryptoCoinRouteArgs>();
      return CryptoCoinScreen(coin: args.coin, key: args.key);
    },
  );
}

class CryptoCoinRouteArgs {
  const CryptoCoinRouteArgs({required this.coin, this.key});

  final CryptoCoinModel coin;

  final Key? key;

  @override
  String toString() {
    return 'CryptoCoinRouteArgs{coin: $coin, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CryptoCoinRouteArgs) return false;
    return coin == other.coin && key == other.key;
  }

  @override
  int get hashCode => coin.hashCode ^ key.hashCode;
}

/// generated route for
/// [CryptoListScreen]
class CryptoListRoute extends PageRouteInfo<void> {
  const CryptoListRoute({List<PageRouteInfo>? children})
    : super(CryptoListRoute.name, initialChildren: children);

  static const String name = 'CryptoListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CryptoListScreen();
    },
  );
}
