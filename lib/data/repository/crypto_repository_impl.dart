
import 'package:CryptoCompare/data/remote/client/api_error.dart';
import 'package:CryptoCompare/data/remote/datasource/crypto_data_source.dart';
import 'package:CryptoCompare/domain/entity/coin_entity.dart';
import 'package:CryptoCompare/domain/repository/crypto_repository.dart';
import 'package:CryptoCompare/utils/mapper.dart';
import 'package:either_dart/either.dart';

class CryptoRepositoryImpl extends CryptoRepository {
  final CryptoDataSource dataSource;
  CryptoRepositoryImpl({required this.dataSource});

  @override
  Future<Either<ApiError, List<CoinEntity>>> getListCoin() async {
    final response = await dataSource.getListCoin();
    return response.isRight ? Right(response.right.map((e) => mappingCoinResponse(e)).toList()) : Left(response.left);
  }


}