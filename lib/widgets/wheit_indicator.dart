import 'package:flutter/material.dart';

class WheitIndicator extends StatelessWidget {
  const WheitIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: CircularProgressIndicator(color: theme.tabBarTheme.indicatorColor),
    );
  }
}
