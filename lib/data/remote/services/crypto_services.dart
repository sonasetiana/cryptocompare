
import 'package:CryptoCompare/data/remote/client/api_error.dart';
import 'package:CryptoCompare/data/remote/client/dio_client.dart';
import 'package:CryptoCompare/data/remote/model/coin_response.dart';
import 'package:dio/dio.dart';

class CryptoServices {

  final DioClient client;

  CryptoServices({required this.client});

  Future<dynamic> getCoins() async {
    final query = {"limit": 10, "tsym": "IDR"};
    return await client.get(
        endPoint: "data/top/totalvolfull",
        query: query
    );
  }

}