import 'dart:convert';
import 'dart:math';

import 'package:CryptoCompare/data/remote/client/configs.dart';
import 'package:CryptoCompare/domain/entity/coin_entity.dart';
import 'package:CryptoCompare/domain/usercase/crypto_usecase.dart';
import 'package:CryptoCompare/utils/json_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_socket_channel/io.dart';

class CryptoController extends GetxController
    with StateMixin<List<CoinEntity>> {
  final CryptoUseCase useCase;
  CryptoController({required this.useCase});

  late List<CoinEntity> listCoins;

  late IOWebSocketChannel channel;

  late bool isSubscription;

  @override
  void onInit() {
    listCoins = [];
    isSubscription = false;
    _initWebSocket();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getListCoin();
  }

  @override
  void dispose() {
    super.dispose();
    removeSubscription();
    channel.sink.close();
  }

  Future<void> getListCoin() async {
    change(listCoins, status: RxStatus.loading());
    final response = await useCase.getListCoin();
    if (response.isRight) {
      listCoins = response.right;
      final status = listCoins.isEmpty ? RxStatus.empty() : RxStatus.success();
      change(listCoins, status: status);
      addSubscription();
    } else {
      change(listCoins, status: RxStatus.error(response.left.message));
    }
  }

  void _initWebSocket() {
    channel = IOWebSocketChannel.connect(Uri.parse(Configs.socketUrl));
    channel.stream.listen((msg) {
      final json = jsonDecode(msg);
      int type = int.parse(json['TYPE'] ?? '123');
      debugPrint('$type');
      switch (type) {
        case 20:
          debugPrint("STREAMERWELCOME");
          break;
        case 16:
          isSubscription = true;
          debugPrint("SUBSCRIBECOMPLETE");
          break;
        case 17:
          isSubscription = false;
          debugPrint("UNSUBSCRIBECOMPLETE");
          break;
        case 5:
          double price = jsonTypeDouble(json['PRICE']);
          String fromSymbol = json['FROMSYMBOL'];
          listCoins =
              listCoins.map((e) => updateCoin(e, price, fromSymbol)).toList();
          change(listCoins, status: RxStatus.success());

          debugPrint(
              'RECEIVE DATA: type : $type price: $price symbol: $fromSymbol');
          break;
        default:
      }
    });
  }

  CoinEntity updateCoin(CoinEntity data, double? price, String? symbol) {
    return data.fromSymbol == symbol
        ? CoinEntity(
            id: data.id,
            name: data.name,
            fullName: data.fullName,
            imageUrl: data.imageUrl,
            type: data.type,
            market: data.market,
            fromSymbol: data.fromSymbol,
            toSymbol: data.toSymbol,
            price: price ?? 0.0)
        : data;
  }

  void addSubscription() {
    if (isSubscription) return;
    final data = {"action": "SubAdd", "subs": subscriptionIds};
    channel.sink.add(jsonEncode(data));
    debugPrint(jsonEncode(data));
  }

  void removeSubscription() {
    if (!isSubscription) return;
    final data = {"action": "SubRemove", "subs": subscriptionIds};
    channel.sink.add(jsonEncode(data));
    debugPrint(jsonEncode(data));
  }

  List<String> get subscriptionIds {
    return listCoins.map((e) => e.subscriptId).toList();
  }
}
