import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/themes/themes.dart';

@RoutePage()
class CryptoCoinScreen extends StatelessWidget {
  const CryptoCoinScreen({required this.coinName, super.key});
  final String coinName;

  @override
  Widget build(BuildContext context) {
    final theme = Themes().themeData;
    return Scaffold(
      appBar: AppBar(title: Text(coinName, style: theme.textTheme.bodyMedium)),
    );
  }
}
