import 'package:pokedex/domain/model/pokemon_list_model.dart';

abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonSuccess extends PokemonState {
  final List<PokemonListModel> pokemons;
  final bool nextPage;

  PokemonSuccess({required this.nextPage, required this.pokemons});
}

class PokemonFailed extends PokemonState {
  final Object error;

  PokemonFailed({required this.error});
}
