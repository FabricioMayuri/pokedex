class PokemonListModel {
  final String name, url;
  final int id;
  const PokemonListModel({
    required this.name,
    required this.url,
    required this.id,
  });

  get image =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

  factory PokemonListModel.fromJson(Map<String, dynamic> json) {
    final tmpName = (json['name'] ?? '') as String;
    final name = tmpName.replaceFirst(tmpName[0], tmpName[0].toUpperCase());
    final url = json['url'] ?? '';
    final id = int.parse(url.split('/')[6]);

    return PokemonListModel(name: name, url: url, id: id);
  }
}
