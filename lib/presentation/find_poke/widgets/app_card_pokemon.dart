import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/presentation/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AppCardPokemon extends StatelessWidget {
  const AppCardPokemon({
    super.key,
    required this.pokemon,
    required this.urlImage,
    required this.id,
    required this.onPressed,
  });

  final String pokemon, urlImage;
  final int id;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CupertinoButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(0),
      child: Container(
        width: (size.width / 3) - 25,
        height: (size.width / 3),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(.25),
              blurRadius: 6,
              offset: const Offset(1, 1),
              spreadRadius: 1,
            ),
          ],
        ),
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: 8,
              right: 8,
              child: Text(
                (id < 10)
                    ? '#00$id'
                    : (id < 100)
                        ? '#0$id'
                        : '#$id',
                style: const TextStyle(
                  color: AppColors.mediumColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: AppColors.backgroundColor,
                ),
                width: size.width,
                height: (size.width / 3) * 0.45,
              ),
            ),
            Positioned(
              top: 20,
              right: 10,
              left: 10,
              bottom:
                  ((size.width / 3) * 0.45 - ((size.width / 3) * 0.45) / 1.9),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: urlImage,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              left: 0,
              child: Text(
                pokemon,
                style: const TextStyle(
                  color: AppColors.darkColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
