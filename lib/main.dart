import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/routes/app_router.dart';
import 'package:rick_and_morty_api/themes/themes.dart';

void main() {
  runApp(const CurrencyListApp());
}

class CurrencyListApp extends StatefulWidget {
  const CurrencyListApp({super.key});

  @override
  State<CurrencyListApp> createState() => _CurrencyListAppState();
}

class _CurrencyListAppState extends State<CurrencyListApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'CurrencyListApp',
      theme: Themes().themeData,
      routerConfig: _appRouter.config(),
    );
  }
}
