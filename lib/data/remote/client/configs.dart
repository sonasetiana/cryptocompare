abstract class Configs {
  static const BASE_URL = "https://min-api.cryptocompare.com/";
  static const API_KEY =
      "0ecbd4c3b215a5260b13347399d966feb27bccf503a8da764cbba4bae270bdf2";
  static const generalApiError = 'Something went wrong, please try again later';

  static String get socketUrl {
    return "wss://streamer.cryptocompare.com/v2?api_key=$API_KEY";
  }

  static String coinImageUrl(String endPoint) {
    return "https://www.cryptocompare.com/$endPoint";
  }
}
