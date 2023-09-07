part of '../../../messages.dart';

/// https://stripe.com/docs/api/account_links/create
@JsonSerializable()
class CreateAccountLinkRequest {
  /// The identifier of the account to create an account link for.
  final String account;

  /// The URL the user will be redirected to if the account link is expired, has been previously-visited, or is otherwise invalid. The URL you specify should attempt to generate a new account link with the same parameters used to create the original account link, then redirect the user to the new account link’s URL so they can continue with Connect Onboarding. If a new account link cannot be generated or the redirect fails you should display a useful error to the user.
  final String refreshUrl;

  /// The URL that the user will be redirected to upon leaving or completing the linked flow.
  final String returnUrl;

  /// The type of account link the user is requesting. Possible values are account_onboarding or account_update.
  final AccountLinkType type;

  CreateAccountLinkRequest({
    required this.account,
    required this.refreshUrl,
    required this.returnUrl,
    required this.type,
  });

  factory CreateAccountLinkRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountLinkRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAccountLinkRequestToJson(this);
}
