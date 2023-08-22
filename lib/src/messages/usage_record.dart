part of '../../messages.dart';

/// https://stripe.com/docs/api/charges/object
@JsonSerializable()
class UsageRecord extends Message {
  /// Unique identifier for the object.
  final String id;

  /// The usage quantity for the specified date.
  final int quantity;

  /// The ID of the subscription item this usage record contains data for.
  final String subscriptionItem;

  /// The timestamp when this usage occurred.
  @TimestampConverter()
  final DateTime timestamp;

  UsageRecord({
    required this.id,
    required this.quantity,
    required this.subscriptionItem,
    required this.timestamp,
  });

  factory UsageRecord.fromJson(Map<String, dynamic> json) =>
      _$UsageRecordFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsageRecordToJson(this);
}
