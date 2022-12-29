
import 'package:CryptoCompare/data/remote/model/coin_display_response.dart';
import 'package:CryptoCompare/data/remote/model/coin_info_response.dart';
import 'package:CryptoCompare/data/remote/model/coin_update_response.dart';

class CoinResponse {
  CoinInfoResponse? coinInfo;
  CoinUpdateResponse? coinUpdate;
  CoinDisplayResponse? coinDisplay;

  CoinResponse({
    this.coinInfo,
    this.coinUpdate,
    this.coinDisplay
  });

  CoinResponse.fromJson(Map<String, dynamic> json) {
    final raw = json['RAW'];
    final display = json['DISPLAY'];
    coinInfo = CoinInfoResponse.fromJson(json['CoinInfo']);
    coinUpdate = CoinUpdateResponse.fromJson(raw['IDR']);
    coinDisplay = CoinDisplayResponse.fromJson(display['IDR']);
  }
}

class ListCoinResponse {
  List<CoinResponse>? data;

  ListCoinResponse({
    this.data
  });

  ListCoinResponse.fromJson(Map<String, dynamic> json) {
    data = (json['Data'] as List).map((e) => CoinResponse.fromJson(e)).toList();
  }

}