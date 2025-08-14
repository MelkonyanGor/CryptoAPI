import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/api/Repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:rick_and_morty_api/api/Repositories/models/crypto_coin_model.dart';

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
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Currency List App')),
      body: _cryptoCoinsList == null
          ? WheitIndicator()
          : ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: _cryptoCoinsList!.length,
              itemBuilder: (context, index) {
                final coin = _cryptoCoinsList![index];
                return CryptoCoinTile(coin: coin);
              },
            ),
    );
  }
  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await CryptoCoinsRepository().getCryptoCoins();
    setState(() {});
  }
}
