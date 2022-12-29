
import 'package:CryptoCompare/data/remote/client/api_error.dart';
import 'package:CryptoCompare/data/remote/model/coin_response.dart';
import 'package:either_dart/either.dart';

abstract class CryptoDataSource {
  Future<Either<ApiError, List<CoinResponse>>> getListCoin();
}