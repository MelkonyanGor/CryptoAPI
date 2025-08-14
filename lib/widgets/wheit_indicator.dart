import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/themes/themes.dart';

class WheitIndicator extends StatelessWidget {
  const WheitIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Themes().themeData;
    return Center(
      child: CircularProgressIndicator(color: theme.tabBarTheme.indicatorColor),
    );
  }
}
