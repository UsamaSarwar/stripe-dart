part of '../../../messages.dart';

abstract class _InvoiceRequest {
  /// Three-letter ISO currency code, in lowercase. Must be a supported currency.
  final String? currency;

  /// An arbitrary string attached to the object. Often useful for displaying to users.
  final String? description;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format. Individual keys can be unset by posting an empty value to them.
  /// All keys can be unset by posting an empty value to metadata.
  final Map<String, String>? metadata;

  /// Either charge_automatically, or send_invoice. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions. Defaults to charge_automatically.
  final CollectionMethod? collectionMethod;

  /// Controls whether Stripe performs automatic collection of the invoice. If false, the invoice’s state doesn’t automatically advance without an explicit action.
  final bool? autoAdvance;

  _InvoiceRequest({
    this.currency,
    this.description,
    this.metadata,
    this.collectionMethod,
    this.autoAdvance,
  });
}

/// https://stripe.com/docs/api/invoices/create
@JsonSerializable()
class CreateInvoiceRequest extends _InvoiceRequest {
  /// The ID of the customer who will be billed.
  final String? customer;

  /// The ID of the subscription to invoice, if any. If set, the created invoice will only include pending invoice items for that subscription. The subscription’s billing cycle and regular subscription events won’t be affected.
  final String? subscription;

  ///If specified, the funds from the invoice will be transferred to the destination and the ID of the resulting transfer will be found on the invoice’s charge. This will be unset if you POST an empty value.
  final CreateInvoiceTransferData? transferData;

  /// The date on which payment for this invoice is due. Only valid for invoices where collection_method=send_invoice. This field can only be updated on draft invoices.
  final int? dueDate;

  CreateInvoiceRequest({
    this.customer,
    this.subscription,
    String? description,
    String? currency,
    Map<String, String>? metadata,
    CollectionMethod? collectionMethod,
    bool? autoAdvance,
    this.transferData,
    this.dueDate,
  }) : super(
          currency: currency,
          description: description,
          metadata: metadata,
          collectionMethod: collectionMethod,
          autoAdvance: autoAdvance,
        );

  factory CreateInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInvoiceRequestToJson(this);
}

class CreateInvoiceTransferData {
  final String destination;

  CreateInvoiceTransferData(this.destination);

  Map<String, dynamic> toJson() {
    return {
      'destination': destination,
    };
  }

  factory CreateInvoiceTransferData.fromJson(Map<String, dynamic> json) {
    return CreateInvoiceTransferData(
      json['destination'] as String,
    );
  }
}
