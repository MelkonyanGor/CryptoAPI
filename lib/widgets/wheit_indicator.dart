import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/themes/themes.dart';

class WheitIndicator extends StatefulWidget {
  const WheitIndicator({super.key});


  @override
  State<WheitIndicator> createState() => _WheitIndicatorState();
}

class _WheitIndicatorState extends State<WheitIndicator> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Themes().themeData;
    return Center(
      child: _isLoading
          ? CircularProgressIndicator(color: theme.tabBarTheme.indicatorColor)
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.bar_chart_rounded,
                  color: theme.primaryColor,
                  size: 80,
                ),
                Text(
                  'Try to get crypto coins!',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
    );
  }
}
