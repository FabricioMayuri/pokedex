abstract class PokemonEvent {}

class ApplyFilterEvent extends PokemonEvent {
  final String filterValue;

  ApplyFilterEvent(this.filterValue);
}

class ApplyOrderByEvent extends PokemonEvent {
  final int orderBy;

  ApplyOrderByEvent(this.orderBy);
}
