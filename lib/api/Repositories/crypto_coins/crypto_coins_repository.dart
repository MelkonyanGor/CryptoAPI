import 'package:dio/dio.dart';
import 'package:rick_and_morty_api/api/Repositories/models/crypto_coin_model.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoinModel>> getCryptoCoins() async {
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,AVAX,BNB&tsyms=USD',
    );
    final data = response.data as Map<String, dynamic>;
    final cryptoCoinsdata = data.entries
        .map(
          (e) => CryptoCoinModel(
            name: e.key,
            priceInUSD: (e.value as Map<String, dynamic>)['USD'],
          ),
        )
        .toList();

    return cryptoCoinsdata;
  }
}
