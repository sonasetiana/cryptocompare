
import 'dart:convert';

import 'package:CryptoCompare/data/remote/client/api_error.dart';
import 'package:CryptoCompare/data/remote/datasource/crypto_data_source.dart';
import 'package:CryptoCompare/data/remote/model/coin_response.dart';
import 'package:CryptoCompare/data/remote/services/crypto_services.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';

class CryptoDataSourceImpl extends CryptoDataSource {
  final CryptoServices services;

  CryptoDataSourceImpl({required this.services});

  @override
  Future<Either<ApiError, List<CoinResponse>>> getListCoin() async {
    final response = await services.getCoins();
    if (response is ApiError) {
      return Left(response);
    } else {
      return Right(ListCoinResponse.fromJson(response).data ?? []);
    }
  }


}