import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_api/api/Repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:rick_and_morty_api/api/Repositories/models/crypto_coin_model.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc() : super(CryptoListInitState()) {
    on<CryptoListGetEvent>((event, emit) async {
      try {
        final coinList = await CryptoCoinsRepository().getCryptoCoins();
        emit(CryptoListLoadedState(coinList: coinList));
      } catch (e) {
        emit(CryptoListLoadingFailureState());
      }
    });
  }
}
