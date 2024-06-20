import 'package:educational_kids_game/core/helper/navigation_bar_view.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/addkid_view.dart';
import 'package:educational_kids_game/features/Kid%20home/view/kid_home_view.dart';
import 'package:educational_kids_game/features/kid%20profile/view/kid_profile_view.dart';
import 'package:educational_kids_game/features/sign_in/logic/sign_in_cubit.dart';
import 'package:educational_kids_game/features/sign_in/views/signin_view.dart';
import 'package:educational_kids_game/features/sign_up/logic/sign_up_cubit.dart';
import 'package:educational_kids_game/features/sign_up/views/signup_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/Challenges/view/Games_view.dart';
import '../../features/levels/nums_level_selection_page.dart';
import '../../features/levels/puzzle_level_selection_page.dart';
import '../../features/pronounce/prounounciation_view.dart';
import '../../features/settings/view/password_settings_view.dart';
import '../../features/settings/view/settings_view.dart';

abstract class Approutes {
  static final routes = {
    SignupView.signUpid: (context) => BlocProvider(
          create: (context) => SignUpCubit(),
          child: const SignupView(),
        ),
    SigninView.signinId: (context) => BlocProvider(
          create: (context) => SignInCubit(),
          child: const SigninView(),
        ),
    AddKidView.addkidid: (context) => const AddKidView(),
    NavigationBarView.navigationbar: (context) => const NavigationBarView(),
    KidHomeView.kidhomeid: (context) => const KidHomeView(),
    KidProfileView.kidprofileid: (context) => const KidProfileView(),
    GamesView.gamesviewid: (context) => const GamesView(),
    PasswordSettingsView.settingsid: (context) => const PasswordSettingsView(),
    SettingsView.settingsviewid: (context) => const SettingsView(),
    ProunounceView.prounounceViewid: (context) => const ProunounceView(),
    NumsLevelSelectionPage.numsRouteNameId: (context) =>
        NumsLevelSelectionPage(),
    PuzzleLevelSelectionPage.puzzleRouteNameId: (context) =>
        PuzzleLevelSelectionPage(),
  };
}
