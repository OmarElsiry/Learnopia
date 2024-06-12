import 'package:educational_kids_game/features/Add%20Kid/presantation/view/addkid_view.dart';
import 'package:educational_kids_game/features/Games/Math%20game/presantation/view/math_game_view.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/signin_view.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/signup_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/Challenges/presantation/view/Games_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/kid_home_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/kid_profile_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/unit%20math/presantation/view/unit_math_view.dart';
import 'package:educational_kids_game/features/navigation_bar_view.dart';
import 'package:educational_kids_game/features/settings/presantation/view/settings_view.dart';
import '../../features/Games/puzzle_games/presantation/view/puzzle_game_view.dart';
import '../../features/levels/nums_level_selection_page.dart';
import '../../features/settings/presantation/view/password_settings_view.dart';

abstract class Approutes {
  static final routes = {
    SignupView.signUpid: (context) => const SignupView(),
    SigninView.signinId: (context) => const SigninView(),
    AddKidView.addkidid: (context) => const AddKidView(),
    NavigationBarView.navigationbar: (context) => const NavigationBarView(),
    KidHomeView.kidhomeid: (context) => const KidHomeView(),
    KidProfileView.kidprofileid: (context) => const KidProfileView(),
    GamesView.gamesviewid: (context) => const GamesView(),
    UnitMathView.unitmathid: (context) => const UnitMathView(),
    PuzzleGameView.puzzlegameid: (context) => const PuzzleGameView(),
    MathGameView.mathgameid: (context) => MathGameView(),
    PasswordSettingsView.settingsid: (context) => const PasswordSettingsView(),
    SettingsView.settingsviewid: (context) => const SettingsView(),
    LevelSelectionPage.numsRouteNameId: (context) => LevelSelectionPage(),
  };
}
