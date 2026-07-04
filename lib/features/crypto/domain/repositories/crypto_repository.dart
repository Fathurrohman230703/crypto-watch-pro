import '../../data/models/crypto_model.dart';

abstract class CryptoRepository {
  Future<List<CryptoModel>> getCryptos();
}