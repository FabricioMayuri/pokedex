import 'package:pokedex/data/server.dart';
import 'package:pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/domain/responses/get_all_response.dart';

class PokemonRepository {
  final apiserver = ApiServer();

  Future<GetAllResponse> getAll({required int index}) async {
    final Map<String, dynamic> queryParameters = {
      "limit": 10,
      "offset": index * 10,
    };
    final response = await apiserver.get(
      'pokemon',
      queryParameters: queryParameters,
    );
    return GetAllResponse.fromJson(response.data);
  }

  Future<PokemonModel> getById({required int pokemonId}) async {
    final response = await Future.wait([
      apiserver.get('pokemon/$pokemonId'),
      apiserver.get('pokemon-species/$pokemonId'),
    ]);
    return PokemonModel.fromJson(response[0].data, response[1].data);
  }
}
