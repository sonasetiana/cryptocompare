
class CoinEntity {
  String? id;
  String? name;
  String? fullName;
  String? imageUrl;
  String? type;
  String? market;
  String? fromSymbol;
  String? toSymbol;
  double? price;

  CoinEntity({
    this.id,
    this.name,
    this.fullName,
    this.imageUrl,
    this.type,
    this.market,
    this.fromSymbol,
    this.toSymbol,
    this.price
  });

  String get subscriptId {
    return "$type~$market~$fromSymbol~$toSymbol";
  }
}