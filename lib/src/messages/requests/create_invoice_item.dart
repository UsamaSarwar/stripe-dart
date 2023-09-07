part of '../../../messages.dart';

/// https://stripe.com/docs/api/invoiceitems/create
@JsonSerializable()
class CreateInvoiceItemRequest {
  /// The ID of the customer who will be billed when this invoice item is billed.
  final String customer;

  /// Same as unit_amount, but accepts a decimal value in cents with at most 12 decimal places. Only one of unit_amount and unit_amount_decimal can be set.
  final double? unitAmountDecimal;

  /// Three-letter ISO currency code, in lowercase. Must be a supported currency.
  final String? currency;

  /// An arbitrary string attached to the object. Often useful for displaying to users.
  final String? description;

  /// The ID of the invoice this invoice item belongs to.
  final String? invoice;

  /// Quantity of units for the invoice item. If the invoice item is a proration, the quantity of the subscription that the proration was computed for.
  final int? quantity;

  CreateInvoiceItemRequest({
    required this.customer,
    this.unitAmountDecimal,
    this.currency,
    this.description,
    this.invoice,
    this.quantity,
  });

  factory CreateInvoiceItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInvoiceItemRequestToJson(this);
}
