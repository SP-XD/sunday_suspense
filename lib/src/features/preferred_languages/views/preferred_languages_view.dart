import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/constants/constants.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/data/repositories/app_data_repository.dart';
import 'package:midnight_suspense/src/features/common_widgets/gradient_text.dart';
import 'package:midnight_suspense/src/features/preferred_languages/bloc/preferred_languages_bloc.dart';

@RoutePage()
class PreferredLanguagesView extends StatelessWidget {
  const PreferredLanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(18.0),
                alignment: Alignment.centerLeft,
                height: 230,
                clipBehavior: Clip.none,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          offset: Offset(220, -10),
                          color: const Color.fromARGB(255, 90, 9, 0),
                          blurRadius: 100,
                          spreadRadius: 40,
                        ),
                        BoxShadow(
                          offset: Offset(-100, 180),
                          color: const Color.fromARGB(255, 60, 10, 0),
                          blurRadius: 100,
                          spreadRadius: 30,
                        )
                      ]),
                    ),
                    GradientText(
                      "SELECT ALL YOUR PREFERRED\nAUDIO LANGUAGES",
                      style: GoogleFonts.creepster(
                        fontSize: 32,
                      ),
                      gradient: SpxdAppConstants.primaryGradient,
                    ),
                  ],
                ),
              ),
              BlocBuilder<PreferredLanguagesBloc, PreferredLanguagesState>(
                builder: (context, state) {
                  return languageButtons(state.availableLanguages, state.selectedLanguages, context);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(150, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  backgroundColor: Colors.grey.shade900,
                  backgroundBuilder: (context, states, child) => DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: GradientBoxBorder(
                        gradient: SpxdAppConstants.LighterGrayToTransparentGradient,
                        width: 2,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: child,
                  ),
                ),
                onPressed: () {
                  getIt<AppDataRepository>().saveOnboardingState(true);
                },
                child: Text("Done",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget languageButtons(
    List<LanguageType> languages,
    List<LanguageType> selectedLanguages,
    BuildContext context,
  ) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      runAlignment: WrapAlignment.spaceBetween,
      spacing: 15,
      runSpacing: 20,
      children: AnimateList(
        interval: 300.ms,
        effects: [
          FadeEffect(duration: 300.ms),
          ScaleEffect(
            begin: Offset(0, 0),
            end: Offset(1, 1),
            duration: 300.ms,
            curve: Curves.decelerate,
          ),
        ],
        children: languages
            .map(
              (l) => TextButton(
                style: TextButton.styleFrom(
                  side: BorderSide(
                    width: 1.5,
                    color: selectedLanguages.contains(l)
                        ? SpxdAppConstants.primaryColorDark
                        : Colors.transparent,
                  ),
                  backgroundBuilder: (context, states, child) => DecoratedBox(
                    decoration: BoxDecoration(gradient: SpxdAppConstants.GrayToDarkerGrayGradient),
                    child: child,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                ),
                onPressed: () {
                  if (selectedLanguages.contains(l)) {
                    context.read<PreferredLanguagesBloc>().add(PreferredLanguagesEvent.unSelectLanguage(l));
                  } else
                    context.read<PreferredLanguagesBloc>().add(PreferredLanguagesEvent.selectLanguage(l));
                },
                child: FittedBox(
                  child: SizedBox(
                    width: 140,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: l.symbol,
                            style: GoogleFonts.ptSerif(
                              fontSize: Theme.of(context).textTheme.headlineLarge!.fontSize,
                              color: selectedLanguages.contains(l)
                                  ? SpxdAppConstants.primaryColorDark
                                  : Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: l == LanguageType.english
                                    ? l.displayNameForUseWithSymbol
                                    : " " + l.displayNameForUseWithSymbol,
                                style: GoogleFonts.ptSerif(
                                  fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
                                  color: selectedLanguages.contains(l)
                                      ? SpxdAppConstants.primaryColorDark
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
