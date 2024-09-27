// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:midnight_suspense/src/features/blank/blank.dart' as _i3;
import 'package:midnight_suspense/src/features/category/view/category_view.dart'
    as _i1;
import 'package:midnight_suspense/src/features/home/view/home_view.dart' as _i2;
import 'package:midnight_suspense/src/features/navigation_tab/view/navigation_tab_view.dart'
    as _i4;
import 'package:midnight_suspense/src/features/player/view/player_view.dart'
    as _i5;
import 'package:midnight_suspense/src/features/preferred_languages/views/preferred_languages_view.dart'
    as _i6;
import 'package:midnight_suspense/src/features/settings/view/settings_view.dart'
    as _i7;
import 'package:midnight_suspense/src/features/splash/view/splash_view.dart'
    as _i8;

/// generated route for
/// [_i1.CategoryView]
class CategoryRoute extends _i9.PageRouteInfo<void> {
  const CategoryRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.CategoryView();
    },
  );
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i9.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i2.HomeView(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.MissingView]
class MissingRoute extends _i9.PageRouteInfo<void> {
  const MissingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MissingRoute.name,
          initialChildren: children,
        );

  static const String name = 'MissingRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.MissingView();
    },
  );
}

/// generated route for
/// [_i4.NavigationTabView]
class NavigationTabRoute extends _i9.PageRouteInfo<void> {
  const NavigationTabRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NavigationTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationTabRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.NavigationTabView();
    },
  );
}

/// generated route for
/// [_i5.PlayerView]
class PlayerRoute extends _i9.PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    _i10.Key? key,
    required void Function() onBackPressed,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PlayerRoute.name,
          args: PlayerRouteArgs(
            key: key,
            onBackPressed: onBackPressed,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayerRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlayerRouteArgs>();
      return _i5.PlayerView(
        key: args.key,
        onBackPressed: args.onBackPressed,
      );
    },
  );
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    this.key,
    required this.onBackPressed,
  });

  final _i10.Key? key;

  final void Function() onBackPressed;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key, onBackPressed: $onBackPressed}';
  }
}

/// generated route for
/// [_i6.PreferredLanguagesView]
class PreferredLanguagesRoute extends _i9.PageRouteInfo<void> {
  const PreferredLanguagesRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PreferredLanguagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreferredLanguagesRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.PreferredLanguagesView();
    },
  );
}

/// generated route for
/// [_i7.SettingsView]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.SettingsView();
    },
  );
}

/// generated route for
/// [_i8.SplashView]
class SplashRoute extends _i9.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SplashRouteArgs>(orElse: () => const SplashRouteArgs());
      return _i8.SplashView(key: args.key);
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}
