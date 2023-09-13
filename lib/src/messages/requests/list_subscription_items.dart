part of '../../../messages.dart';

/// https://stripe.com/docs/api/subscription_items/list
@JsonSerializable()
class ListSubscriptionItemsRequest {
  /// The ID of the subscription whose items will be retrieved.
  final String subscription;

  ListSubscriptionItemsRequest({
    required this.subscription,
  });

  factory ListSubscriptionItemsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListSubscriptionItemsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListSubscriptionItemsRequestToJson(this);
}
