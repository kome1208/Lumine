import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
import 'package:lumine/features/menu/menu_view.dart';
import 'package:lumine/features/menu/ui/view/about_app_view.dart';
import 'package:lumine/features/menu/ui/view/license_view.dart';
import 'package:lumine/features/settings/settings_view.dart';
import 'package:lumine/features/settings/ui/view/account_settings_view.dart';
import 'package:lumine/features/settings/ui/view/notification_settings_view.dart';
import 'package:lumine/features/settings/ui/view/storage_settings_view.dart';
import 'package:lumine/features/settings/ui/view/theme_settings_view.dart';
import 'package:lumine/features/setup/login_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) => GoRouter(
  routes: $appRoutes,
  navigatorKey: App.navigatorKey,
  initialLocation: ref.read(sharedPreferencesProvider).getBool('is_initialized') ?? false ?
   const HomeRoute().location :
   const SetupRoute().location,
);

@TypedGoRoute<SetupRoute>(
  path: '/setup',
  name: 'setup'
)
class SetupRoute extends GoRouteData {
  const SetupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SetupView();
}

@TypedGoRoute<HomeRoute>(
  path: '/',
  name: 'home'
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MainView();
}

@TypedGoRoute<AccountRoute>(
  path: '/account',
  name: 'account'
)
class AccountRoute extends GoRouteData {
  const AccountRoute();
  
  @override
  Widget build(BuildContext context, GoRouterState state) => const AccountView();
}

@TypedGoRoute<CharacterListRoute>(
  path: '/character-list',
  name: 'character-list'
)
class CharacterListRoute extends GoRouteData {
  const CharacterListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const CharacterListView();
}

@TypedGoRoute<AchievementRoute>(
  path: '/achievement',
  name: 'achievement'
)
class AchievementRoute extends GoRouteData {
  const AchievementRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AchievementView();
}

@TypedGoRoute<SpiralAbyssRoute>(
  path: '/spiral-abyss',
  name: 'spiral-abyss'
)
class SpiralAbyssRoute extends GoRouteData {
  const SpiralAbyssRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SpiralAbyssView();
}

@TypedGoRoute<RoleCombatRoute>(
  path: '/role-combat',
  name: 'role-combat'
)
class RoleCombatRoute extends GoRouteData {
  const RoleCombatRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const RoleCombatView();
}

@TypedGoRoute<ResourceDataRoute>(
  path: '/resource-data',
  name: 'resource-data'
)
class ResourceDataRoute extends GoRouteData {
  const ResourceDataRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ResourceDataView();
}

@TypedGoRoute<AnnouncementRoute>(
  path: '/announcement',
  name: 'announcement'
)
class AnnouncementRoute extends GoRouteData {
  const AnnouncementRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AnnouncementView();
}

@TypedGoRoute<DailyBonusRoute>(
  path: '/daily-bonus',
  name: 'daily-bonus'
)
class DailyBonusRoute extends GoRouteData {
  const DailyBonusRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const DailyBonusView();
}

@TypedGoRoute<ExchangeCodeRoute>(
  path: '/exchange-code',
  name: 'exchange-code'
)
class ExchangeCodeRoute extends GoRouteData {
  const ExchangeCodeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ExchangeCodeView();
}

@TypedGoRoute<CalendarRoute>(
  path: '/calendar',
  name: 'calendar'
)
class CalendarRoute extends GoRouteData {
  const CalendarRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const CalendarView();
}

@TypedGoRoute<MenuRoute>(
  path: '/menu',
  name: 'menu'
)
class MenuRoute extends GoRouteData {
  const MenuRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MenuView();
}

@TypedGoRoute<AboutAppRoute>(
  path: '/about-app',
  name: 'about-app'
)
class AboutAppRoute extends GoRouteData {
  const AboutAppRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AboutAppView();
}

@TypedGoRoute<LicenseRoute>(
  path: '/license',
  name: 'license'
)
class LicenseRoute extends GoRouteData {
  const LicenseRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LicenseView();
}

@TypedGoRoute<SettingsRoute>(
  path: '/settings',
  name: 'settings',
  routes: [
    TypedGoRoute<AccountSettingsRoute>(
      path: 'account',
      name: 'account_settings'
    ),
    TypedGoRoute<NotificationSettingsRoute>(
      path: 'notification',
      name: 'notification_settings'
    ),
    TypedGoRoute<StorageSettingsRoute>(
      path: 'storage',
      name: 'storage_settings'
    ),
    TypedGoRoute<ThemeSettingsRoute>(
      path: 'theme',
      name: 'theme_settings'
    ),
  ]
)
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => SettingsView();
}

class AccountSettingsRoute extends GoRouteData {
  const AccountSettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AccountSettingsView();
}

class NotificationSettingsRoute extends GoRouteData {
  const NotificationSettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const NotificationSettingView();
}

class StorageSettingsRoute extends GoRouteData {
  const StorageSettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const StorageSettingsView();
}

class ThemeSettingsRoute extends GoRouteData {
  const ThemeSettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const ThemeSettingView();
}