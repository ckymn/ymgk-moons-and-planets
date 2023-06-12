import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/enums/duration_enums.dart';
import '../../../core/constants/enums/preferences_keys.dart';
import '../../../core/constants/navigation/navigation_constants.dart';
import '../../../core/init/cache/locale_manager.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState()) {
    checkApplication();
  }
  Future<void> checkApplication() async {
    await Future.delayed(Durations.normal.value);
    emit(state.copyWith(isComplete: true));
  }

  void navigationToOnboarding(BuildContext context) {
    if (LocaleManager.instance.getBoolValue(PreferencesKeys.SKIP_ONBOARDING)) {
      context.router.replaceNamed(NavigationConstants.instance.game);
    } else {
      context.router.replaceNamed(NavigationConstants.instance.onboarding);
    }
  }
}
