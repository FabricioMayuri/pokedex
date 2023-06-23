import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/pokemon_details_cubit.dart';

class NavCubit extends Cubit<int?> {
  PokemonDetailsCubit pokemonDetailsCubit;
  NavCubit({required this.pokemonDetailsCubit}) : super(null);

  void toPokemonDetails(int pokemonId) {
    pokemonDetailsCubit.getPokemonDetails(pokemonId);
    emit(pokemonId);
  }

  void back() {
    pokemonDetailsCubit.clearPokemonDetails();
    emit(null);
  }
}
