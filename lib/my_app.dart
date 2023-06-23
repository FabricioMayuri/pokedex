import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/nav_cubit.dart';
import 'package:pokedex/bloc/pokemon_bloc.dart';
import 'package:pokedex/bloc/pokemon_details_cubit.dart';
import 'package:pokedex/domain/request/get_all_request.dart';
import 'package:pokedex/presentation/app_colors.dart';
import 'package:pokedex/presentation/details_poke/details_poke_screen.dart';
import 'package:pokedex/presentation/find_poke/find_poke_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final pokemonDetailsCubit = PokemonDetailsCubit();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PokemonBloc()..add(GetAllRequest(index: 0)),
        ),
        BlocProvider(
          create: (context) => NavCubit(
            pokemonDetailsCubit: pokemonDetailsCubit,
          ),
        ),
        BlocProvider(create: (context) => pokemonDetailsCubit),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          primaryColor: AppColors.primaryColor,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const FindPokeScreen(),
          '/details': (context) => const DetailsPokeScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
