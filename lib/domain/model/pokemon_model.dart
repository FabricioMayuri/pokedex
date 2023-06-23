class PokemonModel {
  final int id;
  final String name;
  final List<String> abilities;
  final List<String> types;
  final double weight, height;
  final Map<String, int> stats;
  final String details;

  PokemonModel({
    required this.id,
    required this.name,
    required this.abilities,
    required this.height,
    required this.types,
    required this.weight,
    required this.stats,
    required this.details,
  });

  get image =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

  factory PokemonModel.fromJson(
    Map<String, dynamic> json,
    Map<String, dynamic> jsonDetails,
  ) {
    final abilities = (json['abilities'] as List)
        .map((j) => (j['ability']['name'] as String).replaceFirst(
            j['ability']['name'][0], j['ability']['name'][0].toUpperCase()))
        .toList();
    final types = (json['types'] as List)
        .map((j) => (j['type']['name'] as String).replaceFirst(
            j['type']['name'][0], j['type']['name'][0].toUpperCase()))
        .toList();

    final Map<String, int> stats = {};
    for (Map<String, dynamic> j in json['stats'] as List) {
      stats[j['stat']['name'] as String] = j['base_stat'] as int;
    }

    final tmpName = (json['name'] ?? '') as String;
    final name = tmpName.replaceFirst(tmpName[0], tmpName[0].toUpperCase());

    return PokemonModel(
      id: json['id'],
      name: name,
      abilities: abilities,
      height: double.parse(json['height'].toString()),
      types: types,
      weight: double.parse(json['weight'].toString()),
      stats: stats,
      details: jsonDetails['flavor_text_entries'][0]['flavor_text'],
    );
  }
}
