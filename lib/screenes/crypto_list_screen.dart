import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/api/Repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:rick_and_morty_api/api/Repositories/models/crypto_coin_model.dart';
import 'package:rick_and_morty_api/themes/themes.dart';
import 'package:rick_and_morty_api/widgets/crypto_coin_tile.dart';
import 'package:rick_and_morty_api/widgets/wheit_indicator.dart';

@RoutePage()
class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoinModel>? _cryptoCoinsList;
  @override
  Widget build(BuildContext context) {
    final theme = Themes().themeData;
    return Scaffold(
      appBar: AppBar(title: Text('Currency List App')),
      body: _cryptoCoinsList == null
          ? WheitIndicator()
          : ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: _cryptoCoinsList!.length,
              itemBuilder: (context, index) {
                final coin = _cryptoCoinsList![index];
                final coinName = coin.name;
                final coinPryce = coin.priceInUSD;
                return CryptoCoinTile(coinName: coinName, coinPrice: coinPryce);
              },
            ),
      floatingActionButton: _cryptoCoinsList == null
          ? ElevatedButton(
              onPressed: () async {
                _cryptoCoinsList = await CryptoCoinsRepository()
                    .getCryptoCoins();
                setState(() {});
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(theme.primaryColor),
              ),
              child: Icon(Icons.get_app),
            )
          : SizedBox(),
    );
  }
}
