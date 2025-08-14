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
    required String coinName,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         CryptoCoinRoute.name,
         args: CryptoCoinRouteArgs(coinName: coinName, key: key),
         initialChildren: children,
       );

  static const String name = 'CryptoCoinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CryptoCoinRouteArgs>();
      return CryptoCoinScreen(coinName: args.coinName, key: args.key);
    },
  );
}

class CryptoCoinRouteArgs {
  const CryptoCoinRouteArgs({required this.coinName, this.key});

  final String coinName;

  final Key? key;

  @override
  String toString() {
    return 'CryptoCoinRouteArgs{coinName: $coinName, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CryptoCoinRouteArgs) return false;
    return coinName == other.coinName && key == other.key;
  }

  @override
  int get hashCode => coinName.hashCode ^ key.hashCode;
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
