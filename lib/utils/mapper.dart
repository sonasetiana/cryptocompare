import 'package:CryptoCompare/data/remote/model/coin_response.dart';
import 'package:CryptoCompare/domain/entity/coin_entity.dart';
import 'package:get/get.dart';

CoinEntity mappingCoinResponse(CoinResponse data) {
  return CoinEntity(
    id: data.coinInfo?.id ?? "",
    name: data.coinInfo?.name ?? "",
    fullName: data.coinInfo?.fullName ?? "",
    imageUrl: data.coinInfo?.imageUrl ?? "",
    type: data.coinUpdate?.type ?? "",
    market: data.coinUpdate?.market ?? "",
    fromSymbol: data.coinUpdate?.fromSymbol ?? "",
    toSymbol: data.coinUpdate?.toSymbol ?? "",
    price: data.coinUpdate?.price ?? 0.0,
  );
}