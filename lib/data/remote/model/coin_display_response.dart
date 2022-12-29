
class CoinDisplayResponse {
  String? fromSymbol;
  String? toSymbol;
  String? market;
  String? price;
  String? lastUpdate;
  String? lastVolume;
  String? lastVolumeTo;
  String? lastTradeId;
  String? volumeDay;
  String? volumeDayTo;
  String? volume24Hour;
  String? volume24HourTo;
  String? openDay;
  String? highDay;
  String? lowDay;
  String? open24Hour;
  String? high24Hour;
  String? low24Hour;
  String? lastMarket;
  String? volumeHour;
  String? volumeHourTo;
  String? openHour;
  String? highHour;
  String? lowHour;
  String? toPTierVolume24Hour;
  String? toPTierVolume24HourTo;
  String? change24Hour;
  String? changePct24Hour;
  String? changeDay;
  String? changePctDay;
  String? changeHour;
  String? changePctHour;
  String? conversionType;
  String? conversionSymbol;
  String? supply;
  String? mktCap;
  String? mktCapPenalty;
  String? circulatingSupply;
  String? circulatingSupplyMktCap;
  String? totalVolume24h;
  String? totalVolume24hTo;
  String? totalToPTierVolume24h;
  String? totalToPTierVolume24hTo;
  String? imageUrl;

  CoinDisplayResponse({
    this.fromSymbol,
    this.toSymbol,
    this.market,
    this.price,
    this.lastUpdate,
    this.lastVolume,
    this.lastVolumeTo,
    this.lastTradeId,
    this.volumeDay,
    this.volumeDayTo,
    this.volume24Hour,
    this.volume24HourTo,
    this.openDay,
    this.highDay,
    this.lowDay,
    this.open24Hour,
    this.high24Hour,
    this.low24Hour,
    this.lastMarket,
    this.volumeHour,
    this.volumeHourTo,
    this.openHour,
    this.highHour,
    this.lowHour,
    this.toPTierVolume24Hour,
    this.toPTierVolume24HourTo,
    this.change24Hour,
    this.changePct24Hour,
    this.changeDay,
    this.changePctDay,
    this.changeHour,
    this.changePctHour,
    this.conversionType,
    this.conversionSymbol,
    this.supply,
    this.mktCap,
    this.mktCapPenalty,
    this.circulatingSupply,
    this.circulatingSupplyMktCap,
    this.totalVolume24h,
    this.totalVolume24hTo,
    this.totalToPTierVolume24h,
    this.totalToPTierVolume24hTo,
    this.imageUrl
  });

  CoinDisplayResponse.fromJson(Map<String, dynamic> json) {
    fromSymbol = json['FROMSYMBOL'];
    toSymbol = json['TOSYMBOL'];
    market = json['MARKET'];
    price = json['PRICE'];
    lastUpdate = json['LASTUPDATE'];
    lastVolume = json['LASTVOLUME'];
    lastVolumeTo = json['LASTVOLUMETO'];
    lastTradeId = json['LASTTRADEID'];
    volumeDay = json['VOLUMEDAY'];
    volumeDayTo = json['VOLUMEDAYTO'];
    volume24Hour = json['VOLUME24HOUR'];
    volume24HourTo = json['VOLUME24HOURTO'];
    openDay = json['OPENDAY'];
    highDay = json['HIGHDAY'];
    lowDay = json['LOWDAY'];
    open24Hour = json['OPEN24HOUR'];
    high24Hour = json['HIGH24HOUR'];
    low24Hour = json['LOW24HOUR'];
    lastMarket = json['LASTMARKET'];
    volumeHour = json['VOLUMEHOUR'];
    volumeHourTo = json['VOLUMEHOURTO'];
    openHour = json['OPENHOUR'];
    highHour = json['HIGHHOUR'];
    lowHour = json['LOWHOUR'];
    toPTierVolume24Hour = json['TOPTIERVOLUME24HOUR'];
    totalToPTierVolume24hTo = json['TOPTIERVOLUME24HOURTO'];
    change24Hour = json['CHANGE24HOUR'];
    changePct24Hour = json['CHANGEPCT24HOUR'];
    changeDay = json['CHANGEDAY'];
    changePctDay = json['CHANGEPCTDAY'];
    changeHour = json['CHANGEHOUR'];
    changePctHour = json['CHANGEPCTHOUR'];
    conversionType = json['CONVERSIONTYPE'];
    conversionSymbol = json['CONVERSIONSYMBOL'];
    supply = json['SUPPLY'];
    mktCap = json['MKTCAP'];
    mktCapPenalty = json['MKTCAPPENALTY'];
    circulatingSupply = json['CIRCULATINGSUPPLY'];
    circulatingSupplyMktCap = json['CIRCULATINGSUPPLYMKTCAP'];
    totalVolume24h = json['TOTALVOLUME24H'];
    totalVolume24hTo = json['TOTALVOLUME24HTO'];
    totalToPTierVolume24h = json['TOTALTOPTIERVOLUME24H'];
    totalToPTierVolume24hTo = json['TOTALTOPTIERVOLUME24HTO'];
    imageUrl = json['IMAGEURL'];
  }

}