part of '../../messages.dart';

/// https://stripe.com/docs/api/invoices/line_item
@JsonSerializable()
class InvoiceLineItem extends Message {
  /// Doesn't work with enum because there is a dot in it.
  final String object;

  /// Unique identifier for the object.
  final String id;

  /// Three-letter ISO currency code, in lowercase. Must be a supported currency.
  final String currency;

  /// An arbitrary string attached to the object. Often useful for displaying to users.
  final String? description;

  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with type=subscription this will reflect the metadata of the subscription that caused the line item to be created.
  final Map<String, dynamic>? metadata;

  /// The price of the line item.
  final Price? price;

  /// The quantity of the subscription, if the line item is a subscription or a proration.
  final int? quantity;

  /// A string identifying the type of the source of this line item, either an invoiceitem or a subscription.
  final String type;

  InvoiceLineItem({
    required this.object,
    required this.id,
    required this.currency,
    this.description,
    this.metadata,
    this.price,
    this.quantity,
    required this.type,
  });

  factory InvoiceLineItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceLineItemToJson(this);
}
