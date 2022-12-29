
import 'package:CryptoCompare/presentation/pages/crypto_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class CryptoBinding extends Bindings {
  @override
  void dependencies() {
    GetIt di = GetIt.instance;
    Get.put(di.get<CryptoController>());
  }
}