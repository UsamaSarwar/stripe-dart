part of '../../../messages.dart';

enum CreateUsageRecordAction { set, increment }

/// https://stripe.com/docs/api/usage_records/create
@JsonSerializable()
class CreateUsageRecordRequest {
  final String subscriptionItem;

  /// The usage quantity for the specified timestamp.
  final int quantity;

  /// Valid values are increment (default) or set. When using increment the specified quantity will be added to the usage at the specified timestamp. The set action will overwrite the usage quantity at that timestamp. If the subscription has billing thresholds, increment is the only allowed value.
  final CreateUsageRecordAction? action;

  @TimestampConverter()

  /// The timestamp for the usage event. This timestamp must be within the current billing period of the subscription of the provided subscription_item, and must not be in the future. When passing "now", Stripe records usage for the current time. Default is "now" if a value is not provided.
  final DateTime? timestamp;

  CreateUsageRecordRequest({
    required this.subscriptionItem,
    required this.quantity,
    this.action,
    this.timestamp,
  });

  factory CreateUsageRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUsageRecordRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateUsageRecordRequestToJson(this)..remove('subscription_item');
}
