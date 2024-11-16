import 'package:flutter/material.dart';
import 'package:lumine/app.dart';
import 'package:lumine/core/provider/shared_preferences.dart';
import 'package:lumine/features/account/account_view.dart';
import 'package:lumine/features/account/achievement/achievement_view.dart';
import 'package:lumine/features/account/character_list/character_list_view.dart';
import 'package:lumine/features/account/resouce_data/resource_data_view.dart';
import 'package:lumine/features/account/role_combat/role_combat_view.dart';
import 'package:lumine/features/account/spiral_abyss/spiral_abyss_view.dart';
import 'package:lumine/features/announcement/announcement_view.dart';
import 'package:lumine/features/calendar/calendar_view.dart';
import 'package:lumine/features/daily_bonus/daily_bonus_view.dart';
import 'package:lumine/features/exchange_code/exchange_code_view.dart';
import 'package:lumine/features/main_view.dart';
import 'package:lumine/features/setup/login_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) => GoRouter(
  routes: $appRoutes,
  navigatorKey: App.navigatorKey,
  initialLocation: ref.read(sharedPreferencesProvider).getBool('is_initialized') ?? false ?
   const HomeRoute().location :
   const SetupRoute().location,
);

@TypedGoRoute<SetupRoute>(
  path: '/setup',
)
class SetupRoute extends GoRouteData {
  const SetupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SetupView();
}

@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MainView();
}

@TypedGoRoute<AccountRoute>(
  path: '/account',
)
class AccountRoute extends GoRouteData {
  const AccountRoute();
  
  @override
  Widget build(BuildContext context, GoRouterState state) => const AccountView();
}

@TypedGoRoute<CharacterListRoute>(
  path: '/character-list',
)
class CharacterListRoute extends GoRouteData {
  const CharacterListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const CharacterListView();
}

@TypedGoRoute<AchievementRoute>(
  path: '/achievement',
)
class AchievementRoute extends GoRouteData {
  const AchievementRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AchievementView();
}

@TypedGoRoute<SpiralAbyssRoute>(
  path: '/spiral-abyss',
)
class SpiralAbyssRoute extends GoRouteData {
  const SpiralAbyssRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SpiralAbyssView();
}

@TypedGoRoute<RoleCombatRoute>(
  path: '/role-combat',
)
class RoleCombatRoute extends GoRouteData {
  const RoleCombatRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const RoleCombatView();
}

@TypedGoRoute<ResourceDataRoute>(
  path: '/resource-data',
)
class ResourceDataRoute extends GoRouteData {
  const ResourceDataRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ResourceDataView();
}

@TypedGoRoute<AnnouncementRoute>(
  path: '/announcement'
)
class AnnouncementRoute extends GoRouteData {
  const AnnouncementRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AnnouncementView();
}

@TypedGoRoute<DailyBonusRoute>(
  path: '/daily-bonus'
)
class DailyBonusRoute extends GoRouteData {
  const DailyBonusRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const DailyBonusView();
}

@TypedGoRoute<ExchangeCodeRoute>(
  path: '/exchange-code'
)
class ExchangeCodeRoute extends GoRouteData {
  const ExchangeCodeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ExchangeCodeView();
}

@TypedGoRoute<CalendarRoute>(
  path: '/calendar'
)
class CalendarRoute extends GoRouteData {
  const CalendarRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const CalendarView();
}