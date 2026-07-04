class CryptoModel {
  final String id;
  final String rank;
  final String symbol;
  final String name;
  final String priceUsd;

  CryptoModel({
    required this.id,
    required this.rank,
    required this.symbol,
    required this.name,
    required this.priceUsd,
  });

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return CryptoModel(
      id: json['id'],
      rank: json['rank'],
      symbol: json['symbol'],
      name: json['name'],
      priceUsd: json['priceUsd'],
    );
  }
}