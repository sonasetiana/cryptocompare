
import 'package:CryptoCompare/data/remote/client/api_error.dart';
import 'package:CryptoCompare/domain/entity/coin_entity.dart';
import 'package:either_dart/either.dart';

abstract class CryptoUseCase {
  Future<Either<ApiError, List<CoinEntity>>> getListCoin();
}