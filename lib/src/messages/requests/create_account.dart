part of '../../../messages.dart';

/// https://stripe.com/docs/api/accounts/create
@JsonSerializable()
class CreateAccountRequest {
  /// The type of Stripe account to create. May be one of custom, express or standard.
  final AccountType type;

  /// The country in which the account holder resides, or in which the business is legally established. This should be an ISO 3166-1 alpha-2 country code. For example, if you are in the United States and the business for which you’re creating an account is legally represented in Canada, you would use CA as the country for the account being created. Available countries include Stripe’s global markets as well as countries where cross-border payouts are supported.
  final String? country;

  /// The email address of the account holder. This is only to make the account easier to identify to you. Stripe only emails Custom accounts with your consent.
  final String? email;

  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata.
  final Map<String, dynamic>? metadata;

  CreateAccountRequest({
    required this.type,
    this.country,
    this.email,
    this.metadata,
  });

  factory CreateAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAccountRequestToJson(this);
}
