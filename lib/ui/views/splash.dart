import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/gen/fonts.gen.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/boarding_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashState();
}

class _SplashState extends ConsumerState<SplashPage> {
  // late Future googleFontsPending;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    final previouslyBoarded = await ref.read(previouslyBoardedProvider.future);
    // googleFontsPending = GoogleFonts.pendingFonts([
    //   GoogleFonts.dmSans(),
      // GoogleFonts.poppins(),
      // GoogleFonts.montserrat(fontStyle: FontStyle.italic),
    // ]);

    Timer(1.seconds, () {
      Get.offAndToNamed(
        previouslyBoarded ? RouteHelper.getHomeTab() : RouteHelper.getOnBoarding(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          "Splash",
          style:
              TextStyle(color: accentColor, fontSize: 30, fontWeight: FontWeight.bold, fontFamily: FontFamily.roboto),
        ),
      ),
    );
  }
}
