
import 'package:CryptoCompare/presentation/pages/crypto_binding.dart';
import 'package:CryptoCompare/presentation/pages/crypto_page.dart';
import 'package:CryptoCompare/presentation/route/app_routes.dart';
import 'package:get/route_manager.dart';

abstract class AppPage {
  static final pages = [
    GetPage(
        name: AppRoutes.home,
        page: () => const CryptoPage(),
        binding: CryptoBinding()
    )
  ];
}