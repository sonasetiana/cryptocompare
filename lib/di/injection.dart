
import 'package:CryptoCompare/data/remote/client/dio_client.dart';
import 'package:CryptoCompare/data/remote/datasource/crypto_data_source.dart';
import 'package:CryptoCompare/data/remote/datasource/crypto_data_source_impl.dart';
import 'package:CryptoCompare/data/remote/services/crypto_services.dart';
import 'package:CryptoCompare/data/repository/crypto_repository_impl.dart';
import 'package:CryptoCompare/domain/repository/crypto_repository.dart';
import 'package:CryptoCompare/domain/usercase/crypto_interactor.dart';
import 'package:CryptoCompare/domain/usercase/crypto_usecase.dart';
import 'package:CryptoCompare/presentation/pages/crypto_controller.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future init() async {
  //httpClient
  locator.registerLazySingleton(() => DioClient());

  //service
  locator.registerLazySingleton(() => CryptoServices(client: locator()));

  //dataSource
  locator.registerLazySingleton<CryptoDataSource>(() => CryptoDataSourceImpl(services: locator()));

  //repository
  locator.registerLazySingleton<CryptoRepository>(() => CryptoRepositoryImpl(dataSource: locator()));

  //usecase
  locator.registerLazySingleton<CryptoUseCase>(() => CryptoInteractor(repository: locator()));

  //controller
  locator.registerFactory(() => CryptoController(useCase: locator()));
}