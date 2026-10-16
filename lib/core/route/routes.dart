import 'package:corper_verse/core/route/paths.dart';
import 'package:corper_verse/presentation/screens/splash/splash.dart';
import 'package:get/get.dart';

class Pages {
  static final List<GetPage> routes = [
    GetPage(name: Paths.SPLASH, page: () => const Splash()),

    // GetPage(
    //   name: Paths.WELCOME,
    //   page: () => const WelcomeScreen(),
    // ),

    // GetPage(
    //   name: Paths.LOGIN,
    //   page: () => const LoginScreen(),
    // ),

    // GetPage(
    //   name: Paths.SIGNUP,
    //   page: () => const SignupScreen(),
    // ),

    // GetPage(
    //   name: Paths.ONBOARDING,
    //   page: () => const OnboardingScreen(),
    // ),

    // GetPage(
    //   name: Paths.CHARACTER_CREATION,
    //   page: () => const CharacterCreationScreen(),
    // ),

    // GetPage(
    //   name: Paths.CAMP,
    //   page: () => const CampScreen(),
    // ),

    // GetPage(
    //   name: Paths.GAMEPLAY,
    //   page: () => const GameplayScreen(),
    // ),

    // GetPage(
    //   name: Paths.DOSSIER,
    //   page: () => const DossierScreen(),
    // ),

    // GetPage(
    //   name: Paths.HANDBOOK,
    //   page: () => const HandbookScreen(),
    // ),
  ];
}
