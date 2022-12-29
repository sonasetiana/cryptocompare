
import 'package:intl/intl.dart';

double jsonTypeDouble(dynamic json) {
  return json == null ? 0.0 : json is int ? json.toDouble() : json;
}

int jsonTypeInt(dynamic json) {
  return json == null ? 0.0 : json is double ? json.toInt() : json;
}

String priceFormat(double price) {
  final nf = NumberFormat.currency(locale: 'id', symbol: 'Rp. ');
  return nf.format(price);
}