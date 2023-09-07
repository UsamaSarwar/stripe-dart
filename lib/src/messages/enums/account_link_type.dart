import 'package:json_annotation/json_annotation.dart';

enum AccountLinkType {
  @JsonValue('account_onboarding')
  accountOnboarding,
  @JsonValue('account_update')
  accountUpdate
}
