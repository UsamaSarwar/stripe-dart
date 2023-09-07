part of '../../messages.dart';

/// https://stripe.com/docs/api/account/login_link
@JsonSerializable()
class AccountLoginLink extends Message {
  final String object;
  final String url;
  @TimestampConverter()
  final DateTime created;

  AccountLoginLink({
    required this.object,
    required this.url,
    required this.created,
  });

  factory AccountLoginLink.fromJson(Map<String, dynamic> json) =>
      _$AccountLoginLinkFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountLoginLinkToJson(this);
}
