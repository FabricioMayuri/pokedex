import 'package:flutter/cupertino.dart';
import 'package:pokedex/presentation/widgets/icons/icons/abc_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/back_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/close_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/filter_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/left_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/number_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/pokeball_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/right_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/rule_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/search_icon.dart';
import 'package:pokedex/presentation/widgets/icons/icons/weight_icon.dart';

abstract final class AppIcons {
  static CustomPaint pokeball({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: PokeballIcon(color: color),
    );
  }

  static CustomPaint searchIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: SearchIcon(color: color),
    );
  }

  static CustomPaint closeIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: CloseIcon(color: color),
    );
  }

  static CustomPaint weightIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: WeightIcon(color: color),
    );
  }

  static CustomPaint ruleIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: RuleIcon(color: color),
    );
  }

  static CustomPaint backIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: BackIcon(color: color),
    );
  }

  static CustomPaint filterIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: FilterIcon(color: color),
    );
  }

  static CustomPaint numberIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: NumberIcon(color: color),
    );
  }

  static CustomPaint abcIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: AbcIcon(color: color),
    );
  }

  static CustomPaint leftIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: LeftIcon(color: color),
    );
  }

  static CustomPaint rightIcon({
    double size = 20,
    Color color = const Color(0xFFFFFFFF),
  }) {
    return CustomPaint(
      size: Size(
        size,
        (size * 1).toDouble(),
      ),
      painter: RightIcon(color: color),
    );
  }
}
