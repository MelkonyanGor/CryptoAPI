import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/api/Repositories/models/crypto_coin_model.dart';

@RoutePage()
class CryptoCoinScreen extends StatelessWidget {
  const CryptoCoinScreen({required this.coin, super.key});
  final CryptoCoinModel coin;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(coin.name, style: theme.textTheme.bodyMedium)),
    );
  }
}
