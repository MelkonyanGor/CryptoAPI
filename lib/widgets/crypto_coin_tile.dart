import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_and_morty_api/routes/app_router.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    required this.coinName,
    required this.coinPrice,
    super.key,
  });
  final String coinName;
  final double coinPrice;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      trailing: Icon(Icons.arrow_forward_ios),
      leading: SvgPicture.asset(
        'assets/svg/bitcoin-logo.svg',
        height: 35,
        width: 35,
      ),
      title: Text(coinName, style: theme.textTheme.bodyMedium),
      subtitle: Text(coinPrice.toString(), style: theme.textTheme.labelSmall),
      onTap: () => context.router.push(CryptoCoinRoute(coinName: coinName)),
    );
  }
}
