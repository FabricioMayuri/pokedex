import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/implements/pokemon_repository.dart';
import 'package:pokedex/domain/model/pokemon_model.dart';

class PokemonDetailsCubit extends Cubit<PokemonModel?> {
  final _pokemonRepository = PokemonRepository();

  PokemonDetailsCubit() : super(null);

  void getPokemonDetails(int pokemonId) async {
    emit(await _pokemonRepository.getById(pokemonId: pokemonId));
  }

  void clearPokemonDetails() => emit(null);
}
