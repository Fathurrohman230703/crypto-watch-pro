import 'package:dio/dio.dart';

import '../../../../../injection/injection.dart';
import '../models/crypto_model.dart';

class CryptoRemoteDataSource {
  final Dio dio = sl<Dio>();

  Future<List<CryptoModel>> getCryptos() async {
    final response = await dio.get('/assets');

    final List data = response.data['data'];

    return data
        .map((e) => CryptoModel.fromJson(e))
        .toList();
  }
}