import '../../domain/repositories/crypto_repository.dart';
import '../datasources/crypto_remote_datasource.dart';
import '../models/crypto_model.dart';

class CryptoRepositoryImpl implements CryptoRepository {
  final CryptoRemoteDataSource remoteDataSource;

  CryptoRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<CryptoModel>> getCryptos() async {
    final cryptos = await remoteDataSource.getCryptos();

    // NIM kamu: 20123092
    // Digit terakhir = 2 (Genap)
    // Wajib Ascending (A-Z)
    cryptos.sort((a, b) => a.name.compareTo(b.name));

    return cryptos;
  }
}