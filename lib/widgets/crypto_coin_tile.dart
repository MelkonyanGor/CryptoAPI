import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/api/Repositories/models/crypto_coin_model.dart';
import 'package:rick_and_morty_api/routes/app_router.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({required this.coin, super.key});
  final CryptoCoinModel coin;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(
        coin.name,
        style: TextStyle(color: theme.listTileTheme.textColor),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
      leading: Image.network(coin.urlImage),
      subtitle: Text(
        '\$${coin.priceInUSD}' ,
        style: theme.textTheme.labelSmall,
      ),
      onTap: () => context.router.push(CryptoCoinRoute(coin: coin)),
    );
  }
}
