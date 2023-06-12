import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../core/init/colors/custom_colors.dart';
import '../../../widgets/text/app_name_logo.dart';
import '../cubit/splash_cubit.dart';
import '../cubit/splash_state.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});
  final SplashCubit _cubit = SplashCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit(),
      child: Scaffold(
        backgroundColor: CustomColors.instance.primaryColor,
        body: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state.isComplete ?? false) {
              _cubit.navigationToOnboarding(context);
            }
          },
          child: Center(
              child: AppNameLogo(
            fontSize: 35.sp,
            color: Colors.white,
          )),
        ),
      ),
    );
  }
}
