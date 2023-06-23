import 'package:pokedex/bloc/pokemon_event.dart';

class GetAllRequest extends PokemonEvent {
  final int index;

  GetAllRequest({required this.index});
}
