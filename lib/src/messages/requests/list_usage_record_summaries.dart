part of '../../../messages.dart';

/// https://stripe.com/docs/api/usage_records/subscription_item_summary_list
@JsonSerializable()
class ListUsageRecordSummariesRequest {
  final String subscriptionItem;

  /// A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  final int? limit;

  /// A cursor for use in pagination. ending_before is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with obj_bar, your subsequent call can include ending_before=obj_bar in order to fetch the previous page of the list.
  final String? endingBefore;

  /// A cursor for use in pagination. starting_after is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include starting_after=obj_foo in order to fetch the next page of the list.
  final String? startingAfter;

  ListUsageRecordSummariesRequest({
    required this.subscriptionItem,
    this.limit,
    this.endingBefore,
    this.startingAfter,
  });

  factory ListUsageRecordSummariesRequest.fromJson(Map<String, dynamic> json) =>
      _$ListUsageRecordSummariesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListUsageRecordSummariesRequestToJson(this)
    ..remove('subscription_item');
}
