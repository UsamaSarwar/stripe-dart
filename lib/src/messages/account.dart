part of '../../messages.dart';

/// https://stripe.com/docs/api/accounts/object
@JsonSerializable()
class Account extends Message {
  final String object;
  final String id;
  final AccountType type;
  final String? country;
  final String? email;
  final bool chargesEnabled;
  final Map<String, dynamic>? metadata;

  Account({
    required this.object,
    required this.id,
    required this.type,
    this.country,
    this.email,
    this.chargesEnabled = false,
    required this.metadata,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
