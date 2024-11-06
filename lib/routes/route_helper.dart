import 'package:get/get.dart';
import 'package:koi_farm/auth/sign_in_page.dart';
import 'package:koi_farm/pages/account/login.dart';
import 'package:koi_farm/pages/detail/detail_koi.dart';
import 'package:koi_farm/pages/detail/monitor_page.dart';
import 'package:koi_farm/pages/detail/parameter_page.dart';
import 'package:koi_farm/pages/entity/koi_page.dart';
import 'package:koi_farm/pages/home/home_page.dart';
import 'package:koi_farm/pages/splash/splash_page.dart';

class RouteHelper {
  static const String initial = "/";
  static const String splashPage = "/splash-page";
  static const String popularFood = "/popular-food";
  static const String monitorPage = "/monitor-page";
  static const String parameterPage = "/parameter-page";
  static const String koiPage = "/koi-page";
  static const String detailKoiPage = "/detail-koi-page";
  static const String recommendedFood = "/recommended-food";
  static const String signIn = "/sign-in";
  static const String cartPage = "/cart-page";
  static const String cartHistoryPage = "/cart-history-page";
  static const String payment = '/payment';
  static const String orderSuccess = '/order-successful';
  static const String login = '/login';

  static String getSplashPage() => '$splashPage';
  static String getInitial() => '$initial';
  static String getMonitorPage() => '$monitorPage';
  static String getParameterPage() => '$parameterPage';
  static String getKoiPage() => '$koiPage';
  static String getDetailKoiPage() => '$detailKoiPage';
  static String getPopularFood(int pageId, String page) =>
      '$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood(int pageId, String page) =>
      '$recommendedFood?pageId=$pageId&page=$page';
  static String getCartPage() => '$cartPage';
  static String getCartHistoryPage() => '$cartHistoryPage';
  static String getSignInPage() => '$signIn';
  static String getPaymentPage(String id, int userID) =>
      '$payment?id=$id&userID=$userID';
  static String getOrderSuccessPage(String orderID, String status) =>
      '$orderSuccess?id=$orderID&status=$status';

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => SplashScreen()),
    GetPage(
        name: initial,
        page: () {
          //return signuppage for register
          return HomePage();
        }),
    GetPage(
        name: signIn,
        page: () {
          return SignInPage();
        },
        transition: Transition.fade),
    GetPage(
        name: monitorPage,
        page: () {
          return MonitorPage();
        },
        transition: Transition.fade),
    GetPage(
        name: koiPage,
        page: () {
          return KoiPage();
        },
        transition: Transition.fade),
    GetPage(
        name: parameterPage,
        page: () {
          return ParameterPage();
        },
        transition: Transition.fade),
    GetPage(
        name: detailKoiPage,
        page: () {
          return DetailKoi();
        },
        transition: Transition.fade),
    // GetPage(
    //     name: login(),
    //     page: () {
    //       return LoginPage();
    //     },
    //     transition: Transition.fade),
  ];
}
