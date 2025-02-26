import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:pokemon/providers/pokemon_data_providers.dart';
import 'package:pokemon/models/pokemon.dart';

class PokemonListTile extends ConsumerWidget {
  final String pokemonURL;

  late FavoritePokemonProvider _favoritePokemonProvider;
  late List<String> _favoritePokemons;

  PokemonListTile({super.key, required this.pokemonURL});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _favoritePokemonProvider = ref.watch(favoritePokemonProvider.notifier);
    _favoritePokemons = ref.watch(favoritePokemonProvider);

    final pokemon = ref.watch(pokemonDataProvider(pokemonURL));
    return pokemon.when(
      data: (data) {
        return _tile(context, false, data);
      },
      error: (error, stackTrace) {
        return Text('Error: $error');
      },
      loading: () {
        return _tile(context, true, null);
      },
    );
  }

  Widget _tile(BuildContext context, bool isLoading, Pokemon? pokemon) {
    return Skeletonizer(
      enabled: isLoading,
      child: ListTile(
        leading:
            pokemon != null
                ? CircleAvatar(
                  backgroundImage: NetworkImage(pokemon.sprites!.frontDefault!),
                )
                : const CircleAvatar(),
        title: Text(
          pokemon != null
              ? pokemon.name!.toUpperCase()
              : "Currently loading Pokemon names.",
        ),
        subtitle: Text("Has ${pokemon?.moves?.length.toString() ?? 0} moves"),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border_outlined),
        ),
      ),
    );
  }
}
