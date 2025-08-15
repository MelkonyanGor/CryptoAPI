part of 'crypto_list_bloc.dart';

abstract class CryptoListState {}

class CryptoListInitState extends CryptoListState {}

class CryptoListLoadingState extends CryptoListState {}

class CryptoListLoadedState extends CryptoListState {
  CryptoListLoadedState({required this.coinList});
  final List<CryptoCoinModel> coinList;
}

class CryptoListLoadingFailureState extends CryptoListState {}
