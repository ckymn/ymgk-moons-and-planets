import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../core/constants/assets/font_constants.dart';
import '../../../core/constants/assets/svg_constants.dart';
import '../../../core/init/colors/custom_colors.dart';
import '../../../widgets/button/general_button.dart';
import '../../../widgets/button/general_text_button.dart';
import '../../../widgets/sizedBox/dynamic_veritical_space.dart';
import '../cubit/onboard_cubit.dart';
import '../cubit/onboard_state.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    BlocProvider.of<OnboardCubit>(context).init();
    super.initState();
  }

  var yes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _buildSkipButton(),
        Positioned(
            child: SizedBox(
          height: 100.h,
          width: 100.h,
          child: Column(
            children: [
              DynamicVerticalSpace(height: 14.h),
              SizedBox(
                height: 70.h,
                child: BlocConsumer<OnboardCubit, OnboardState>(
                  listener: ((context, state) {}),
                  builder: (context, state) {
                    return PageView.builder(
                        controller: _pageController,
                        onPageChanged: (index) {
                          BlocProvider.of<OnboardCubit>(context).changeCurrentIndex(index);
                        },
                        itemCount: context.read<OnboardCubit>().onboardingModelList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.h, right: 3.0),
                                child: Image.asset(
                                  context.read<OnboardCubit>().onboardingModelList[index].imagePath,
                                  height: 30.h,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              DynamicVerticalSpace(
                                  height: index != 0
                                      ? index == 2
                                          ? 11.h
                                          : 13.h
                                      : 7.h),
                              Padding(
                                padding: EdgeInsets.only(left: 3.h, right: 3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      context.read<OnboardCubit>().onboardingModelList[index].title,
                                      style: TextStyle(fontSize: 19.sp, fontFamily: FontsConstants.instance.INTER_SEMIBOLD),
                                    ),
                                    DynamicVerticalSpace(height: 1.h),
                                    Text(
                                      context.read<OnboardCubit>().onboardingModelList[index].description,
                                      style: TextStyle(fontSize: 15.sp, fontFamily: FontsConstants.instance.INTER_REGULAR),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        });
                  },
                ),
              ),
              SizedBox(
                height: 6.h,
                child: BlocBuilder<OnboardCubit, OnboardState>(
                  builder: (context, state) {
                    return state.currentIndex == 2
                        ? GeneralButton(
                            backgroundColor: Color(0xffF2A83C),
                            onPressed: () => context.read<OnboardCubit>().navigateToLogin(context),
                            radius: 2.h,
                            label: 'PLAY')
                        : ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(0.5.h),
                                child: CircleAvatar(
                                  backgroundColor: state.currentIndex == index ? CustomColors.instance.black : Colors.grey,
                                  radius: state.currentIndex == index ? 5 : 4,
                                ),
                              );
                            });
                  },
                ),
              ),
            ],
          ),
        ))
      ],
    ));
  }

  Positioned _buildSkipButton() {
    return Positioned(
        top: 7.h,
        right: 0,
        child: BlocBuilder<OnboardCubit, OnboardState>(
          builder: (context, state) {
            return Visibility(
              visible: state.currentIndex != context.read<OnboardCubit>().onboardingModelList.length - 1,
              child: GeneralTextButton(
                  color: CustomColors.instance.black,
                  onPressed: () {
                    context.read<OnboardCubit>().navigateToLogin(context);
                  },
                  label: 'Skip'),
            );
          },
        ));
  }

  Positioned _buildBackground() {
    return Positioned(
      top: 0,
      bottom: 0,
      left: 0,
      right: 0,
      child: BlocBuilder<OnboardCubit, OnboardState>(
        builder: (context, state) {
          return SvgPicture.asset(
            state.currentIndex == 0
                ? SvgConstants.instance.onboard1Back
                : state.currentIndex == 1
                    ? SvgConstants.instance.onboard2Back
                    : state.currentIndex == 2
                        ? SvgConstants.instance.onboard3Back
                        : SvgConstants.instance.onboard1Back,
            height: 100.h,
            width: 100.w,
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }

  Padding newMethod() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          DynamicVerticalSpace(),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11.sp),
              ),
            ),
          ),
          DynamicVerticalSpace(),
          SizedBox(
            height: 64.h,
            child: BlocConsumer<OnboardCubit, OnboardState>(
              listener: ((context, state) {}),
              builder: (context, state) {
                return PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      BlocProvider.of<OnboardCubit>(context).changeCurrentIndex(index);
                    },
                    itemCount: context.read<OnboardCubit>().onboardingModelList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(
                            context.read<OnboardCubit>().onboardingModelList[index].imagePath,
                            height: 38.h,
                            fit: BoxFit.fill,
                          ),
                          DynamicVerticalSpace(height: 7.h),
                          Text(
                            context.read<OnboardCubit>().onboardingModelList[index].title,
                            style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                          ),
                          DynamicVerticalSpace(height: 2.h),
                          Text(
                            context.read<OnboardCubit>().onboardingModelList[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.normal),
                          ),
                        ],
                      );
                    });
              },
            ),
          ),
          DynamicVerticalSpace(height: 2.h),
          BlocBuilder<OnboardCubit, OnboardState>(
            builder: (context, state) {
              return RawMaterialButton(
                fillColor: Colors.green,
                onPressed: () {
                  if (state.currentIndex == context.read<OnboardCubit>().onboardingModelList.length - 1) {
                    // print('bitti');
                  }
                  if (state.currentIndex != context.read<OnboardCubit>().onboardingModelList.length - 1) {
                    _pageController.animateToPage(state.currentIndex + 1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                    BlocProvider.of<OnboardCubit>(context).changeCurrentIndex(state.currentIndex + 1);
                  }
                },
                elevation: 2.0,
                padding: EdgeInsets.all(2.h),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
