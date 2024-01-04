import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_controller_provider.dart';
import 'package:instant_grrocery_delivery/route/app_router.dart';
import 'package:instant_grrocery_delivery/ui/widget/buttons/action_button.dart';

class LoginToAccess extends StatelessWidget {
  const LoginToAccess({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // ref.invalidate(getAuthUserProvider);
    return Consumer(
      builder: (context, ref, _) {
        final authUser = ref.watch(authControllerProvider);

        return authUser.map(
          data: (data) => child,
          error: (error) => notLoggedIn(),
          loading: (loading) => notLoggedIn(),
          empty: (value) => notLoggedIn(),
        );
      },
    );

    // : child;
  }

  Widget notLoggedIn() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 150),
          const Text(
            "Please login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          const Text(
            "You are not logged in. Please login to access this page.",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 100),
          Row(
            children: [
              ActionButton(
                enabled: true,
                onTap: () {
                  // return Get.toNamed(RouteHelper.getLogin());
                  return AppRouter().push(LoginRoute());
                },
                text: "Click to Login",
              ),
            ],
          ),
          // TextButton(
          //   style: TextButton.styleFrom(
          //     backgroundColor: accentColor,
          //     padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 40),
          //   ),
          //   onPressed: () {
          //     Get.toNamed(RouteHelper.getLogin());
          //   },
          //   child: const Text(
          //     "Login",
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          //   ),
          // ),
        ],
      ),
    );
  }
}
