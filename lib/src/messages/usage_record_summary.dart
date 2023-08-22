part of '../../messages.dart';

@JsonSerializable()
class UsageRecordSummary extends Message {
  final String object;

  /// Unique identifier for the object.
  final String id;

  final String? invoice;

  final String subscriptionItem;

  final int totalUsage;

  final Period period;

  UsageRecordSummary({
    required this.object,
    required this.id,
    this.invoice,
    required this.subscriptionItem,
    required this.totalUsage,
    required this.period,
  });

  factory UsageRecordSummary.fromJson(Map<String, dynamic> json) =>
      _$UsageRecordSummaryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsageRecordSummaryToJson(this);
}
