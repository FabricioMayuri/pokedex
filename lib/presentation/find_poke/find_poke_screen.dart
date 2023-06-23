import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/nav_cubit.dart';
import 'package:pokedex/bloc/pokemon_bloc.dart';
import 'package:pokedex/bloc/pokemon_state.dart';
import 'package:pokedex/presentation/app_colors.dart';
import 'package:pokedex/presentation/find_poke/widgets/app_card_pokemon.dart';
import 'package:pokedex/presentation/widgets/app_text_file.dart';
import 'package:pokedex/presentation/widgets/icons/app_icons.dart';

class FindPokeScreen extends StatelessWidget {
  const FindPokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 13,
                  ),
                  child: Row(
                    children: [
                      AppIcons.pokeball(),
                      const SizedBox(width: 12),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: AppColors.whiteColor,
                        ),
                        child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TyperAnimatedText(
                              'Pokédex',
                              speed: const Duration(milliseconds: 90),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    top: 2,
                    left: 13,
                    right: 13,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: FadeInLeft(
                          child: AppTextField(
                            controller: TextEditingController(),
                            hintText: 'Search',
                            onChanged: (value) {
                              BlocProvider.of<PokemonBloc>(context)
                                  .applyFilter(value);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      FadeInRight(
                        child: CupertinoButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (a) => AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Sort by:",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: Column(children: [
                                        RadioListTile<int>(
                                          title: const Text('Number'),
                                          value: 1,
                                          groupValue:
                                              BlocProvider.of<PokemonBloc>(
                                                      context)
                                                  .orderBy,
                                          onChanged: (val) {
                                            BlocProvider.of<PokemonBloc>(
                                                    context)
                                                .applyOrderBy(
                                              1,
                                            );
                                            Navigator.of(a).pop();
                                          },
                                          activeColor: AppColors.primaryColor,
                                        ),
                                        RadioListTile<int>(
                                          title: const Text('Name'),
                                          value: 2,
                                          groupValue:
                                              BlocProvider.of<PokemonBloc>(
                                                      context)
                                                  .orderBy,
                                          onChanged: (val) {
                                            BlocProvider.of<PokemonBloc>(
                                                    context)
                                                .applyOrderBy(
                                              2,
                                            );
                                            Navigator.of(a).pop();
                                          },
                                          activeColor: AppColors.primaryColor,
                                        ),
                                      ]),
                                    )
                                  ],
                                ),
                                backgroundColor: AppColors.primaryColor,
                              ),
                            );
                          },
                          child: Container(
                            width: 46,
                            height: 46,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.blackColor.withOpacity(.25),
                                  blurStyle: BlurStyle.inner,
                                  blurRadius: 3,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 1,
                                ),
                              ],
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                              child: BlocBuilder<PokemonBloc, PokemonState>(
                                builder: (context, state) {
                                  if (BlocProvider.of<PokemonBloc>(context)
                                          .orderBy ==
                                      1) {
                                    return AppIcons.numberIcon(
                                      size: 20,
                                      color: AppColors.primaryColor,
                                    );
                                  } else {
                                    return AppIcons.abcIcon(
                                      size: 20,
                                      color: AppColors.primaryColor,
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF000000).withOpacity(.25),
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                          spreadRadius: 1,
                          blurStyle: BlurStyle.inner,
                        ),
                      ],
                    ),
                    width: size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: BlocBuilder<PokemonBloc, PokemonState>(
                      builder: (context, state) {
                        if (state is PokemonLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is PokemonSuccess) {
                          return Column(
                            children: [
                              Expanded(
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 10,
                                  ),
                                  itemCount: state.pokemons.length,
                                  itemBuilder: (context, index) {
                                    return FadeInUp(
                                      duration: const Duration(
                                        milliseconds: 1000,
                                      ),
                                      child: AppCardPokemon(
                                        pokemon: state.pokemons[index].name,
                                        urlImage: state.pokemons[index].image,
                                        id: state.pokemons[index].id,
                                        onPressed: () {
                                          BlocProvider.of<NavCubit>(context)
                                              .toPokemonDetails(
                                            state.pokemons[index].id,
                                          );
                                          Navigator.of(context)
                                              .pushNamed('/details');
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                              CupertinoButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () =>
                                    BlocProvider.of<PokemonBloc>(context)
                                        .loadMore(),
                                child: const Text(
                                  "Cargar más...",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else if (state is PokemonFailed) {
                          return Center(
                            child: Text(
                              state.error.toString(),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
