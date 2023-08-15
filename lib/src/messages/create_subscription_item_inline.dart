part of '../../messages.dart';

/// https://stripe.com/docs/api/subscriptions/create
@JsonSerializable()
class CreateSubscriptionItemInline extends Message {
  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata.
  final Map<String, dynamic>? metadata;

  /// The ID of the price object.
  final String? price;

  /// Data used to generate a new Price object inline.
  final Map<String, dynamic>? priceData;

  /// Quantity for this item.
  final int? quantity;

  CreateSubscriptionItemInline({
    this.metadata,
    this.price,
    this.quantity,
    this.priceData,
  });

  factory CreateSubscriptionItemInline.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionItemInlineFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateSubscriptionItemInlineToJson(this);
}
