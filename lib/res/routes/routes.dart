
import 'package:bank_ui/View/creat_account.dart';
import 'package:bank_ui/View/sign_in.dart';
import 'package:bank_ui/View/sign_in_page.dart';
import 'package:bank_ui/res/routes/routes_name.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class Routes {
  static appRoutes() =>
      [
        GetPage(name: RoutesName.login,
            page: () => const LoginInPage(),
            transition: Transition.rightToLeft),
        GetPage(name: RoutesName.creatAcc,
            page: () =>  CreatAccount(),
            transition: Transition.rightToLeft),
        GetPage(name: RoutesName.signUp,
            page: () => const SignIn(),
            transition: Transition.rightToLeft),
        // GetPage(name: RoutesName.signUpGog,
        //     page: () => HomeScreen(),
        //     transition: Transition.rightToLeft)
      ];
}