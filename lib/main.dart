import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'core/init/colors/palette_primary_color.dart';
import 'core/init/initialize/project_initialize.dart';
import 'core/init/language/locale_keys.g.dart';
import 'core/init/navigation/app_router.dart';
import 'features/onboarding/cubit/onboard_cubit.dart';
import 'theme_cubit.dart';

final _appRouter = AppRouter();

Future<void> main() async {
  final IProjectInitialize appInitialize = ProjectInitialize();
  await appInitialize.setup();
  runApp(
    EasyLocalization(
      path: appInitialize.languageInitialize.translationsPath,
      supportedLocales: appInitialize.languageInitialize.supportedLocales,
      child: BlocProvider(
        create: (_) => ThemeCubit(),
        child: const _MyApp(),
      ),
    ),
  );
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnboardCubit>(create: (context) => OnboardCubit()),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            debugShowCheckedModeBanner: false,
            routeInformationParser: _appRouter.defaultRouteParser(),
            title: LocaleKeys.appName.tr(),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch(primarySwatch: PalettePrimary.primaryColor),
            ),
            routeInformationProvider: _appRouter.routeInfoProvider(),
          ),
        );
      }),
    );
  }
}
