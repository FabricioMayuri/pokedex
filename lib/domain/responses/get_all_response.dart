import 'package:pokedex/domain/model/pokemon_list_model.dart';

class GetAllResponse {
  final bool nextPage;
  final int count;
  final List<PokemonListModel> results;

  GetAllResponse({
    required this.nextPage,
    required this.count,
    required this.results,
  });

  factory GetAllResponse.fromJson(Map<String, dynamic> json) {
    final nextPage = (json['next'] != null);
    final count = json['count'];
    final results = (json['results'] as List)
        .map((e) => PokemonListModel.fromJson(e))
        .toList();

    return GetAllResponse(
      count: count,
      nextPage: nextPage,
      results: results,
    );
  }
}
