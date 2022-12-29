
import 'package:CryptoCompare/utils/json_utils.dart';

class CoinInfoResponse {
  String? id;
  String? name;
  String? fullName;
  String? internal;
  String? imageUrl;
  String? url;
  String? algorithm;
  String? proofType;
  int? blockNumber;
  double? blockTime;
  double? blockReward;
  String? assetLaunchDate;
  double? maxSupply;
  int? type;
  String? documentType;

  CoinInfoResponse({
    this.id,
    this.name,
    this.fullName,
    this.internal,
    this.imageUrl,
    this.url,
    this.algorithm,
    this.proofType,
    this.blockNumber,
    this.blockTime,
    this.blockReward,
    this.assetLaunchDate,
    this.maxSupply,
    this.type,
    this.documentType
  });

  CoinInfoResponse.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    fullName = json['FullName'];
    internal = json['Internal'];
    imageUrl = json['ImageUrl'];
    url = json['Url'];
    algorithm = json['Algorithm'];
    proofType = json['ProofType'];
    blockNumber = json['BlockNumber'];
    blockTime = jsonTypeDouble(json['BlockTime']);
    blockReward = jsonTypeDouble(json['BlockReward']);
    assetLaunchDate = json['AssetLaunchDate'];
    maxSupply = jsonTypeDouble(json['MaxSupply']);
    type = json['Type'];
    documentType = json['DocumentType'];
  }
}