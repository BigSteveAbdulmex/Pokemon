import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'package:pokemon/models/pokemon.dart';
import 'package:pokemon/services/http_service.dart';

final pokemonDataProvider = FutureProvider.family<Pokemon?, String>((
  ref,
  url,
) async {
  HTTPService httpService = GetIt.instance.get<HTTPService>();
  Response? res = await httpService.get(url);
  if (res != null && res.data != null) {
    return Pokemon.fromJson(res.data!);
  }
  return null;
});

final favoritePokemonProvider =
    StateNotifierProvider<FavoritePokemonProvider, List<String>>((ref) {
      return FavoritePokemonProvider([]);
    });

class FavoritePokemonProvider extends StateNotifier<List<String>> {
  FavoritePokemonProvider(super._state) {
    _setup();
  }

  Future<void> _setup() async {}
}
