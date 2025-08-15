import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_api/bloc/crypto_list_bloc.dart';
import 'package:rick_and_morty_api/widgets/crypto_coin_tile.dart';
import 'package:rick_and_morty_api/widgets/wheit_indicator.dart';

@RoutePage()
class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => CryptoListBloc()..add(CryptoListGetEvent()),
      child: Scaffold(
        appBar: AppBar(title: Text('Currency List App')),
        body: BlocBuilder<CryptoListBloc, CryptoListState>(
          builder: (context, state) {
            if (state is CryptoListLoadedState) {
              return ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: state.coinList.length,
                itemBuilder: (context, index) {
                  final coin = state.coinList[index];
                  return CryptoCoinTile(coin: coin);
                },
              );
            }
            if (state is CryptoListLoadingFailureState) {
              return Center(
                child: Column(
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
            return WheitIndicator();
          },
        ),
      ),
    );
  }
}
