import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/assets/image_constants.dart';
import '../../../core/constants/enums/preferences_keys.dart';
import '../../../core/constants/navigation/navigation_constants.dart';
import '../../../core/init/cache/locale_manager.dart';
import '../model/onboarding_model.dart';
import 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  List<OnBoardModel> onboardingModelList = [];

  OnboardCubit()
      : super(OnboardState(
          currentIndex: 0,
        ));

  void changeCurrentIndex(int value) {
    emit(OnboardState(
      currentIndex: value,
    ));
  }

  void init() {
    onboardingModelList = [
      OnBoardModel(
          'Matematiksel Gökyüzünde Yolculuk',
          'Ağaçta Bulunan Yıldızlar, matematiksel işlemleri eğlenceli bir oyun deneyimiyle birleştiren bir oyun. Bu oyunla birlikte matematiksel yeteneklerinizi kullanarak gökyüzünde bir yolculuğa çıkacak ve bulmacaları çözerken yıldızları keşfedeceksiniz.',
          ImageConstants.instance.img1),
      OnBoardModel('Yıldızlarla Dolu Matematik Labirentleri', 'Ağaçta Bulunan Yıldızlar, matematiksel labirentlerin yer aldığı bir oyun.',
          ImageConstants.instance.img11),
      OnBoardModel(
          'Yıldızların Matematiksel Sırrını Çözün',
          'Ağaçta Bulunan Yıldızlar, matematiksel sırları çözmek için bir bulmaca oyunudur. Oyunda, gizemli yıldızların arasında dolaşacak ve matematiksel soruları çözerek sırları açığa çıkaracaksınız.',
          ImageConstants.instance.img3),
    ];
    emit(OnboardState(
      currentIndex: state.currentIndex,
    ));
  }

  Future<void> navigateToLogin(BuildContext context) async {
    LocaleManager.instance.setBoolValue(PreferencesKeys.SKIP_ONBOARDING, true);
    context.router.replaceNamed(NavigationConstants.instance.game);
  }
}
