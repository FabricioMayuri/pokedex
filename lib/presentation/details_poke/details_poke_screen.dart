import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/nav_cubit.dart';
import 'package:pokedex/bloc/pokemon_details_cubit.dart';
import 'package:pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/presentation/app_colors.dart';
import 'package:pokedex/presentation/widgets/icons/app_icons.dart';

class DetailsPokeScreen extends StatelessWidget {
  const DetailsPokeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<NavCubit>(context).back();
        return true;
      },
      child: BlocBuilder<PokemonDetailsCubit, PokemonModel?>(
        builder: (context, pokemon) {
          if (pokemon != null) {
            return Scaffold(
              backgroundColor: AppColors.typesColors[pokemon.types[0]],
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: SizedBox(
                    height: size.height,
                    width: size.width,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: FadeInUp(
                            child: AppIcons.pokeball(
                              size: size.width * 0.6,
                              color: AppColors.whiteColor.withOpacity(0.20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 13,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FadeInLeft(
                                duration: const Duration(
                                  milliseconds: 1000,
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<NavCubit>(context)
                                            .back();
                                        Navigator.of(context).pop();
                                      },
                                      child: AppIcons.backIcon(size: 30),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      pokemon.name,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              FadeInRight(
                                child: Text(
                                  (pokemon.id < 10)
                                      ? '#00${pokemon.id}'
                                      : (pokemon.id < 100)
                                          ? '#0${pokemon.id}'
                                          : '#${pokemon.id}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: size.width * 0.6 + 20,
                          bottom: 0,
                          child: FadeInUp(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                color: AppColors.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF000000)
                                        .withOpacity(.25),
                                    blurRadius: 3,
                                    offset: const Offset(0, 1),
                                    spreadRadius: 1,
                                    blurStyle: BlurStyle.inner,
                                  ),
                                ],
                              ),
                              width: size.width - 14,
                              padding: EdgeInsets.only(
                                top: (size.height * 0.30) / 3.3,
                                right: 20,
                                left: 20,
                                bottom: 20,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        for (String type in pokemon.types)
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 4),
                                            margin: EdgeInsets.only(
                                                right:
                                                    (type != pokemon.types.last)
                                                        ? 15
                                                        : 0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(20),
                                              ),
                                              color:
                                                  AppColors.typesColors[type],
                                            ),
                                            child: Text(
                                              type,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.whiteColor,
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    "About",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: AppColors
                                          .typesColors[pokemon.types[0]],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  IntrinsicHeight(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    AppIcons.weightIcon(
                                                      color:
                                                          AppColors.darkColor,
                                                      size: 20,
                                                    ),
                                                    const SizedBox(width: 6),
                                                    Text(
                                                      "${pokemon.weight.toStringAsFixed(1).replaceAll('.', ',')} kg",
                                                      style: const TextStyle(
                                                        fontSize: 13.4,
                                                        color:
                                                            AppColors.darkColor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Text(
                                                "Weight",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: AppColors.mediumColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 1,
                                          color: AppColors.whiteColor,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    RotatedBox(
                                                      quarterTurns: 1,
                                                      child: AppIcons.ruleIcon(
                                                        color:
                                                            AppColors.darkColor,
                                                        size: 20,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 6),
                                                    Text(
                                                      "${pokemon.height.toStringAsFixed(1).replaceAll('.', ',')} m",
                                                      style: const TextStyle(
                                                        fontSize: 13.4,
                                                        color:
                                                            AppColors.darkColor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Text(
                                                "Height",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: AppColors.mediumColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 1,
                                          color: AppColors.liteColor,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  for (String ability
                                                      in pokemon.abilities)
                                                    Text(
                                                      ability,
                                                      style: const TextStyle(
                                                        fontSize: 13.4,
                                                        color:
                                                            AppColors.darkColor,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              const SizedBox(height: 5),
                                              const Text(
                                                "Moves",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: AppColors.mediumColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      pokemon.details.replaceAll('\n', ' '),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColors.darkColor,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    "Base Stats",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: AppColors
                                          .typesColors[pokemon.types[0]],
                                    ),
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "HP",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.typesColors[
                                                    pokemon.types[0]],
                                              ),
                                            ),
                                            Text(
                                              "ATK",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.typesColors[
                                                    pokemon.types[0]],
                                              ),
                                            ),
                                            Text(
                                              "DEF",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.typesColors[
                                                    pokemon.types[0]],
                                              ),
                                            ),
                                            Text(
                                              "SATK",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.typesColors[
                                                    pokemon.types[0]],
                                              ),
                                            ),
                                            Text(
                                              "SDEF",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.typesColors[
                                                    pokemon.types[0]],
                                              ),
                                            ),
                                            Text(
                                              "SPD",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                                color: AppColors.typesColors[
                                                    pokemon.types[0]],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          width: 1,
                                          color: AppColors.liteColor,
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    (pokemon.stats['hp']! < 10)
                                                        ? '00${pokemon.stats['hp']}'
                                                        : (pokemon.stats[
                                                                    'hp']! <
                                                                100)
                                                            ? '0${pokemon.stats['hp']}'
                                                            : '${pokemon.stats['hp']}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.darkColor,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(10),
                                                      ),
                                                      child:
                                                          LinearProgressIndicator(
                                                        value: (double.parse(
                                                                pokemon
                                                                    .stats['hp']
                                                                    .toString()) /
                                                            200),
                                                        minHeight: 4,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          AppColors.typesColors[
                                                              pokemon
                                                                  .types[0]]!,
                                                        ), // Color del indicador de progreso
                                                        backgroundColor: AppColors
                                                            .typesColors[pokemon
                                                                .types[0]]!
                                                            .withOpacity(
                                                                .10), // Color de fondo de la barra de progreso
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    (pokemon.stats['attack']! <
                                                            10)
                                                        ? '00${pokemon.stats['attack']}'
                                                        : (pokemon.stats[
                                                                    'attack']! <
                                                                100)
                                                            ? '0${pokemon.stats['attack']}'
                                                            : '${pokemon.stats['attack']}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.darkColor,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(10),
                                                      ),
                                                      child:
                                                          LinearProgressIndicator(
                                                        value: (double.parse(
                                                                pokemon.stats[
                                                                        'attack']
                                                                    .toString()) /
                                                            200),
                                                        minHeight: 4,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          AppColors.typesColors[
                                                              pokemon
                                                                  .types[0]]!,
                                                        ), // Color del indicador de progreso
                                                        backgroundColor: AppColors
                                                            .typesColors[pokemon
                                                                .types[0]]!
                                                            .withOpacity(
                                                                .10), // Color de fondo de la barra de progreso
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    (pokemon.stats['defense']! <
                                                            10)
                                                        ? '00${pokemon.stats['defense']}'
                                                        : (pokemon.stats[
                                                                    'defense']! <
                                                                100)
                                                            ? '0${pokemon.stats['defense']}'
                                                            : '${pokemon.stats['defense']}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.darkColor,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(10),
                                                      ),
                                                      child:
                                                          LinearProgressIndicator(
                                                        value: (double.parse(pokemon
                                                                .stats[
                                                                    'defense']
                                                                .toString()) /
                                                            200),
                                                        minHeight: 4,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          AppColors.typesColors[
                                                              pokemon
                                                                  .types[0]]!,
                                                        ), // Color del indicador de progreso
                                                        backgroundColor: AppColors
                                                            .typesColors[pokemon
                                                                .types[0]]!
                                                            .withOpacity(
                                                                .10), // Color de fondo de la barra de progreso
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    (pokemon.stats[
                                                                'special-attack']! <
                                                            10)
                                                        ? '00${pokemon.stats['special-attack']}'
                                                        : (pokemon.stats[
                                                                    'special-attack']! <
                                                                100)
                                                            ? '0${pokemon.stats['special-attack']}'
                                                            : '${pokemon.stats['special-attack']}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.darkColor,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(10),
                                                      ),
                                                      child:
                                                          LinearProgressIndicator(
                                                        value: (double.parse(pokemon
                                                                .stats[
                                                                    'special-attack']
                                                                .toString()) /
                                                            200),
                                                        minHeight: 4,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          AppColors.typesColors[
                                                              pokemon
                                                                  .types[0]]!,
                                                        ), // Color del indicador de progreso
                                                        backgroundColor: AppColors
                                                            .typesColors[pokemon
                                                                .types[0]]!
                                                            .withOpacity(
                                                                .10), // Color de fondo de la barra de progreso
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    (pokemon.stats[
                                                                'special-defense']! <
                                                            10)
                                                        ? '00${pokemon.stats['special-defense']}'
                                                        : (pokemon.stats[
                                                                    'special-defense']! <
                                                                100)
                                                            ? '0${pokemon.stats['special-defense']}'
                                                            : '${pokemon.stats['special-defense']}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.darkColor,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(10),
                                                      ),
                                                      child:
                                                          LinearProgressIndicator(
                                                        value: (double.parse(pokemon
                                                                .stats[
                                                                    'special-defense']
                                                                .toString()) /
                                                            200),
                                                        minHeight: 4,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          AppColors.typesColors[
                                                              pokemon
                                                                  .types[0]]!,
                                                        ), // Color del indicador de progreso
                                                        backgroundColor: AppColors
                                                            .typesColors[pokemon
                                                                .types[0]]!
                                                            .withOpacity(
                                                                .10), // Color de fondo de la barra de progreso
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    (pokemon.stats['speed']! <
                                                            10)
                                                        ? '00${pokemon.stats['speed']}'
                                                        : (pokemon.stats[
                                                                    'speed']! <
                                                                100)
                                                            ? '0${pokemon.stats['speed']}'
                                                            : '${pokemon.stats['speed']}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          AppColors.darkColor,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Expanded(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(10),
                                                      ),
                                                      child:
                                                          LinearProgressIndicator(
                                                        value: (double.parse(
                                                                pokemon.stats[
                                                                        'speed']
                                                                    .toString()) /
                                                            200),
                                                        minHeight: 4,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          AppColors.typesColors[
                                                              pokemon
                                                                  .types[0]]!,
                                                        ), // Color del indicador de progreso
                                                        backgroundColor: AppColors
                                                            .typesColors[pokemon
                                                                .types[0]]!
                                                            .withOpacity(
                                                                .10), // Color de fondo de la barra de progreso
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: (size.width * 0.6) - ((size.width * 0.6) * 0.65),
                          right: 15,
                          left: 0,
                          child: ZoomIn(
                            duration: const Duration(milliseconds: 1000),
                            child: Center(
                              child: CachedNetworkImage(
                                imageUrl: pokemon.image,
                                fit: BoxFit.fitHeight,
                                width: size.height * 0.30,
                              ),
                            ),
                          ),
                        ),
                        if (pokemon.id > 1)
                          Positioned(
                            top: ((size.width * 0.6) -
                                    ((size.width * 0.6) * 0.65) +
                                    size.height * 0.30) /
                                2,
                            right: 15,
                            left: 15,
                            child: FadeInLeft(
                              duration: const Duration(milliseconds: 1000),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<NavCubit>(context).back();
                                    BlocProvider.of<NavCubit>(context)
                                        .toPokemonDetails(
                                      (pokemon.id - 1),
                                    );
                                  },
                                  child: AppIcons.leftIcon(size: 30),
                                ),
                              ),
                            ),
                          ),
                        Positioned(
                          top: ((size.width * 0.6) -
                                  ((size.width * 0.6) * 0.65) +
                                  size.height * 0.30) /
                              2,
                          right: 15,
                          left: 15,
                          child: FadeInRight(
                            duration: const Duration(milliseconds: 1000),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  BlocProvider.of<NavCubit>(context).back();
                                  BlocProvider.of<NavCubit>(context)
                                      .toPokemonDetails(
                                    (pokemon.id + 1),
                                  );
                                },
                                child: AppIcons.rightIcon(size: 30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
