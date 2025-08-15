import 'package:dio/dio.dart';
import 'package:rick_and_morty_api/api/Repositories/models/crypto_coin_model.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoinModel>> getCryptoCoins() async {
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AID,CAG,DOV,SOL&tsyms=USD',
    );
    if (response.data != null && response.data is Map<String, dynamic>) {
      final data = response.data as Map<String, dynamic>;
      final dataRAW = data['RAW'] as Map<String, dynamic>;
      final cryptoCoinsdata = dataRAW.entries.map((e) {
        final usdData =
            (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
        final price = usdData['PRICE'];
        final urlImage = usdData['IMAGEURL'];
        return CryptoCoinModel(
          name: e.key,
          priceInUSD: price,
          urlImage: 'https://www.cryptocompare.com/$urlImage',
        );
      }).toList();
      return cryptoCoinsdata;
    } else {
      return [];
    }
  }
}
