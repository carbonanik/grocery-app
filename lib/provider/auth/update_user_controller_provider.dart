import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

// class UpdateUserController extends StateNotifier<AuthResult> {
//   UpdateUserController(this.ref) : super(const AuthResult.initial()){
//     ref.read(getAuthUserProvider).whenData((value) {
//       state = AuthResult.data(value!);
//     });
//   }
//
//   final Ref ref;
//
//   void update(UpdateUserRequest updateUser) async {
//     try {
//       state = const AuthResult.loading();
//       final savedAuthUser = await ref.read(getAuthUserProvider.future);
//
//       if (savedAuthUser == null) {
//         throw Exception('Failed to get auth user');
//       }
//
//       final user = await ref.read(authApiProvider).update(
//             authUser: savedAuthUser,
//             updateUser: updateUser,
//           );
//
//       final newAuthUser = AuthResponse(jwt: savedAuthUser.jwt, user: user);
//
//       await ref.read(saveAuthUserProvider(newAuthUser).future);
//       state = AuthResult.data(newAuthUser);
//
//     } catch (e) {
//       state = AuthResult.error(Exception("Failed to update user"));
//     }
//   }
// }
//
// final updateUserControllerProvider = StateNotifierProvider<UpdateUserController, AuthResult>(
//   (ref) => UpdateUserController(ref),
// );
