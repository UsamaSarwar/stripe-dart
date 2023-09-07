part of '../../messages.dart';

// https://stripe.com/docs/api/account_links/object
@JsonSerializable()
class AccountLink extends Message {
  @TimestampConverter()
  final DateTime expiresAt;
  @TimestampConverter()
  final DateTime created;
  final String object;
  final String url;

  AccountLink({
    required this.expiresAt,
    required this.created,
    required this.object,
    required this.url,
  });

  factory AccountLink.fromJson(Map<String, dynamic> json) =>
      _$AccountLinkFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountLinkToJson(this);
}
