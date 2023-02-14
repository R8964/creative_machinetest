import 'package:creativetest/Screens/forgot_password_screen.dart';
import 'package:creativetest/Screens/home_screen.dart';
import 'package:creativetest/Screens/login_screen.dart';
import 'package:creativetest/Screens/reset_password_screen.dart';
import 'package:creativetest/Screens/signup_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: loginscreen, page: () =>  LoginScreen()),
  GetPage(name: homescreen, page: () =>  Homescreen()),
  GetPage(name: forgotpasswordscreen, page: () =>  ForgotPasswordScreen()),
  GetPage(name: signupscreen, page: () =>  SignUpScreen()),
  GetPage(name: resetpasswordscreen, page: () =>  ResetPasswordScreen()),

];

String loginscreen = '/login';
String homescreen = '/home';
String forgotpasswordscreen = '/forgot';
String signupscreen = '/signup';
String resetpasswordscreen = '/resetpassword';


