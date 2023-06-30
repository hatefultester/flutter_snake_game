import '../../routes/game_route.dart';
import '../../routes/home_route.dart';
import '../../routes/score_route.dart';
import 'package:get/get.dart';

import '../../routes/onboarding_route.dart';
import '../../routes/settings_route.dart';

const String homeRoute = '/home';
const String settingsRoute = '/settings';
const String gameRoute = '/game';
const String scoreRoute = '/score';
const String onboardingRoute = '/onboarding';

List<GetPage> pages = [
  GetPage(
      name: homeRoute,
      page: () {
        return const HomeRoute();
      }),
  GetPage(
      name: scoreRoute,
      page: () {
        return const ScoreRoute();
      }),
  GetPage(
      name: gameRoute,
      page: () {
        return const GameRoute();
      }),
  GetPage(
      name: settingsRoute,
      page: () {
        return const SettingsRoute();
      }),
  GetPage(
      name: onboardingRoute,
      page: () {
        return const OnboardingRoute();
      }),
];
