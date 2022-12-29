
import 'package:CryptoCompare/utils/json_utils.dart';

class CoinUpdateResponse {
  String? type;
  String? market;
  String? fromSymbol;
  String? toSymbol;
  String? flags;
  double? price;
  int? lastUpdate;
  double? lastVolume;
  double? lastVolumeTo;
  String? lastTradeId;
  double? volumeDay;
  double? volumeDayTo;
  double? volume24Hour;
  double? volume24HourTo;
  double? open24Hour;
  double? high24Hour;
  double? low24Hour;
  double? volumeHour;
  double? volumeHourTo;
  double? toPTierVolume24Hour;
  double? toPTierVolume24HourTo;
  double? currentSupplyMktCap;
  double? circulatingSupplyMktCap;
  double? maxSupplyMktCap;

  CoinUpdateResponse({
    this.type,
    this.market,
    this.fromSymbol,
    this.toSymbol,
    this.flags,
    this.price,
    this.lastUpdate,
    this.lastVolume,
    this.lastVolumeTo,
    this.lastTradeId,
    this.volumeDay,
    this.volume24Hour,
    this.volume24HourTo,
    this.open24Hour,
    this.high24Hour,
    this.low24Hour,
    this.volumeHour,
    this.volumeHourTo,
    this.toPTierVolume24Hour,
    this.toPTierVolume24HourTo,
    this.currentSupplyMktCap,
    this.circulatingSupplyMktCap,
    this.maxSupplyMktCap
  });

  CoinUpdateResponse.fromJson(Map<String, dynamic> json) {
    type = json['TYPE'];
    market = json['MARKET'];
    fromSymbol = json['FROMSYMBOL'];
    toSymbol = json['TOSYMBOL'];
    flags = json['FLAGS'];
    price = jsonTypeDouble(json['PRICE']);
    lastUpdate = jsonTypeInt(json['LASTUPDATE']);
    lastVolume = jsonTypeDouble(json['LASTVOLUME']);
    lastVolumeTo = jsonTypeDouble(json['LASTVOLUMETO']);
    lastTradeId = json['LASTTRADEID'];
    volumeDay = jsonTypeDouble(json['VOLUMEDAY']);
    volumeDayTo = jsonTypeDouble(json['VOLUMEDAYTO']);
    volume24Hour = jsonTypeDouble(json['VOLUME24HOUR']);
    volume24HourTo = jsonTypeDouble(json['VOLUME24HOURTO']);
    open24Hour = jsonTypeDouble(json['OPEN24HOUR']);
    high24Hour = jsonTypeDouble(json['HIGH24HOUR']);
    low24Hour = jsonTypeDouble(json['LOW24HOUR']);
    volumeHour = jsonTypeDouble(json['VOLUMEHOUR']);
    volumeHourTo = jsonTypeDouble(json['VOLUMEHOURTO']);
    toPTierVolume24Hour = jsonTypeDouble(json['TOPTIERVOLUME24HOUR']);
    toPTierVolume24HourTo = jsonTypeDouble(json['TOPTIERVOLUME24HOURTO']);
    currentSupplyMktCap = jsonTypeDouble(json['CURRENTSUPPLYMKTCAP']);
    circulatingSupplyMktCap = jsonTypeDouble(json['CIRCULATINGSUPPLYMKTCAP']);
    maxSupplyMktCap = jsonTypeDouble(json['MAXSUPPLYMKTCAP']);
  }

}
