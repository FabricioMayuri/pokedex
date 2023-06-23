import 'package:pokedex/bloc/pokemon_event.dart';
import 'package:pokedex/bloc/pokemon_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/implements/pokemon_repository.dart';
import 'package:pokedex/domain/model/pokemon_list_model.dart';
import 'package:pokedex/domain/request/get_all_request.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final _pokemonRepository = PokemonRepository();
  List<PokemonListModel> originalList = [];
  bool nextPage = true;
  int orderBy = 1;
  int index = 0;

  PokemonBloc() : super(PokemonInitial()) {
    on<GetAllRequest>((event, emit) async {
      try {
        emit(PokemonLoading());

        final getAllResponse = await _pokemonRepository.getAll(
          index: event.index,
        );
        index++;
        originalList.addAll(getAllResponse.results);

        final filteredList = originalList;

        if (orderBy == 1) {
          filteredList.sort((a, b) => a.id.compareTo(b.id));
        }

        if (orderBy == 2) {
          filteredList.sort((a, b) => a.name.compareTo(b.name));
        }

        nextPage = getAllResponse.nextPage;
        emit(PokemonSuccess(
          nextPage: getAllResponse.nextPage,
          pokemons: filteredList,
        ));
      } catch (e) {
        emit(PokemonFailed(error: e));
      }
    });

    on<ApplyFilterEvent>((event, emit) async {
      emit(PokemonLoading());
      final filterValue = event.filterValue.toLowerCase();
      final filteredList = originalList
          .where((item) => item.name.toLowerCase().contains(filterValue))
          .toList();

      if (orderBy == 1) {
        filteredList.sort((a, b) => a.id.compareTo(b.id));
      }

      if (orderBy == 2) {
        filteredList.sort((a, b) => a.name.compareTo(b.name));
      }

      emit(PokemonSuccess(
        nextPage: nextPage,
        pokemons: filteredList,
      ));
    });

    on<ApplyOrderByEvent>((event, emit) async {
      orderBy = event.orderBy;
      emit(PokemonLoading());

      final orderList = originalList;

      if (orderBy == 1) {
        orderList.sort((a, b) => a.id.compareTo(b.id));
      }

      if (orderBy == 2) {
        orderList.sort((a, b) => a.name.compareTo(b.name));
      }

      emit(PokemonSuccess(
        nextPage: nextPage,
        pokemons: orderList,
      ));
    });
  }

  void applyFilter(String filterValue) {
    add(ApplyFilterEvent(filterValue));
  }

  void applyOrderBy(int orderBy) {
    add(ApplyOrderByEvent(orderBy));
  }

  void loadMore() {
    add(GetAllRequest(index: index));
  }
}
