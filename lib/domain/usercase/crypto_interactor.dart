
import 'package:CryptoCompare/data/remote/client/api_error.dart';
import 'package:CryptoCompare/domain/entity/coin_entity.dart';
import 'package:CryptoCompare/domain/repository/crypto_repository.dart';
import 'package:CryptoCompare/domain/usercase/crypto_usecase.dart';
import 'package:either_dart/either.dart';

class CryptoInteractor extends CryptoUseCase {
  final CryptoRepository repository;
  CryptoInteractor({required this.repository});

  @override
  Future<Either<ApiError, List<CoinEntity>>> getListCoin() {
    return repository.getListCoin();
  }

}