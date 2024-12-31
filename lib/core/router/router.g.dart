// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $setupRoute,
      $homeRoute,
      $accountRoute,
      $characterListRoute,
      $achievementRoute,
      $spiralAbyssRoute,
      $roleCombatRoute,
      $resourceDataRoute,
      $announcementRoute,
      $dailyBonusRoute,
      $exchangeCodeRoute,
      $calendarRoute,
      $menuRoute,
      $aboutAppRoute,
      $licenseRoute,
      $settingsRoute,
    ];

RouteBase get $setupRoute => GoRouteData.$route(
      path: '/setup',
      name: 'setup',
      factory: $SetupRouteExtension._fromState,
    );

extension $SetupRouteExtension on SetupRoute {
  static SetupRoute _fromState(GoRouterState state) => const SetupRoute();

  String get location => GoRouteData.$location(
        '/setup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      name: 'home',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $accountRoute => GoRouteData.$route(
      path: '/account',
      name: 'account',
      factory: $AccountRouteExtension._fromState,
    );

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => const AccountRoute();

  String get location => GoRouteData.$location(
        '/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $characterListRoute => GoRouteData.$route(
      path: '/character-list',
      name: 'character-list',
      factory: $CharacterListRouteExtension._fromState,
    );

extension $CharacterListRouteExtension on CharacterListRoute {
  static CharacterListRoute _fromState(GoRouterState state) =>
      const CharacterListRoute();

  String get location => GoRouteData.$location(
        '/character-list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $achievementRoute => GoRouteData.$route(
      path: '/achievement',
      name: 'achievement',
      factory: $AchievementRouteExtension._fromState,
    );

extension $AchievementRouteExtension on AchievementRoute {
  static AchievementRoute _fromState(GoRouterState state) =>
      const AchievementRoute();

  String get location => GoRouteData.$location(
        '/achievement',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $spiralAbyssRoute => GoRouteData.$route(
      path: '/spiral-abyss',
      name: 'spiral-abyss',
      factory: $SpiralAbyssRouteExtension._fromState,
    );

extension $SpiralAbyssRouteExtension on SpiralAbyssRoute {
  static SpiralAbyssRoute _fromState(GoRouterState state) =>
      const SpiralAbyssRoute();

  String get location => GoRouteData.$location(
        '/spiral-abyss',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $roleCombatRoute => GoRouteData.$route(
      path: '/role-combat',
      name: 'role-combat',
      factory: $RoleCombatRouteExtension._fromState,
    );

extension $RoleCombatRouteExtension on RoleCombatRoute {
  static RoleCombatRoute _fromState(GoRouterState state) =>
      const RoleCombatRoute();

  String get location => GoRouteData.$location(
        '/role-combat',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $resourceDataRoute => GoRouteData.$route(
      path: '/resource-data',
      name: 'resource-data',
      factory: $ResourceDataRouteExtension._fromState,
    );

extension $ResourceDataRouteExtension on ResourceDataRoute {
  static ResourceDataRoute _fromState(GoRouterState state) =>
      const ResourceDataRoute();

  String get location => GoRouteData.$location(
        '/resource-data',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $announcementRoute => GoRouteData.$route(
      path: '/announcement',
      name: 'announcement',
      factory: $AnnouncementRouteExtension._fromState,
    );

extension $AnnouncementRouteExtension on AnnouncementRoute {
  static AnnouncementRoute _fromState(GoRouterState state) =>
      const AnnouncementRoute();

  String get location => GoRouteData.$location(
        '/announcement',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $dailyBonusRoute => GoRouteData.$route(
      path: '/daily-bonus',
      name: 'daily-bonus',
      factory: $DailyBonusRouteExtension._fromState,
    );

extension $DailyBonusRouteExtension on DailyBonusRoute {
  static DailyBonusRoute _fromState(GoRouterState state) =>
      const DailyBonusRoute();

  String get location => GoRouteData.$location(
        '/daily-bonus',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $exchangeCodeRoute => GoRouteData.$route(
      path: '/exchange-code',
      name: 'exchange-code',
      factory: $ExchangeCodeRouteExtension._fromState,
    );

extension $ExchangeCodeRouteExtension on ExchangeCodeRoute {
  static ExchangeCodeRoute _fromState(GoRouterState state) =>
      const ExchangeCodeRoute();

  String get location => GoRouteData.$location(
        '/exchange-code',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $calendarRoute => GoRouteData.$route(
      path: '/calendar',
      name: 'calendar',
      factory: $CalendarRouteExtension._fromState,
    );

extension $CalendarRouteExtension on CalendarRoute {
  static CalendarRoute _fromState(GoRouterState state) => const CalendarRoute();

  String get location => GoRouteData.$location(
        '/calendar',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $menuRoute => GoRouteData.$route(
      path: '/menu',
      name: 'menu',
      factory: $MenuRouteExtension._fromState,
    );

extension $MenuRouteExtension on MenuRoute {
  static MenuRoute _fromState(GoRouterState state) => const MenuRoute();

  String get location => GoRouteData.$location(
        '/menu',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $aboutAppRoute => GoRouteData.$route(
      path: '/about-app',
      name: 'about-app',
      factory: $AboutAppRouteExtension._fromState,
    );

extension $AboutAppRouteExtension on AboutAppRoute {
  static AboutAppRoute _fromState(GoRouterState state) => const AboutAppRoute();

  String get location => GoRouteData.$location(
        '/about-app',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $licenseRoute => GoRouteData.$route(
      path: '/license',
      name: 'license',
      factory: $LicenseRouteExtension._fromState,
    );

extension $LicenseRouteExtension on LicenseRoute {
  static LicenseRoute _fromState(GoRouterState state) => const LicenseRoute();

  String get location => GoRouteData.$location(
        '/license',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsRoute => GoRouteData.$route(
      path: '/settings',
      name: 'settings',
      factory: $SettingsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'account',
          name: 'account_settings',
          factory: $AccountSettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'notification',
          name: 'notification_settings',
          factory: $NotificationSettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'storage',
          name: 'storage_settings',
          factory: $StorageSettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'theme',
          name: 'theme_settings',
          factory: $ThemeSettingsRouteExtension._fromState,
        ),
      ],
    );

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountSettingsRouteExtension on AccountSettingsRoute {
  static AccountSettingsRoute _fromState(GoRouterState state) =>
      const AccountSettingsRoute();

  String get location => GoRouteData.$location(
        '/settings/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NotificationSettingsRouteExtension on NotificationSettingsRoute {
  static NotificationSettingsRoute _fromState(GoRouterState state) =>
      const NotificationSettingsRoute();

  String get location => GoRouteData.$location(
        '/settings/notification',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StorageSettingsRouteExtension on StorageSettingsRoute {
  static StorageSettingsRoute _fromState(GoRouterState state) =>
      const StorageSettingsRoute();

  String get location => GoRouteData.$location(
        '/settings/storage',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThemeSettingsRouteExtension on ThemeSettingsRoute {
  static ThemeSettingsRoute _fromState(GoRouterState state) =>
      const ThemeSettingsRoute();

  String get location => GoRouteData.$location(
        '/settings/theme',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'70921fd4c469b4746d55c0ccb83fafde22ea0695';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = Provider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
