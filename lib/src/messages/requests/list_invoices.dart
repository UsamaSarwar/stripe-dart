part of '../../../messages.dart';

/// https://stripe.com/docs/api/invoices/list
@JsonSerializable()
class ListInvoicesRequest {
  /// Only return invoices for the subscription specified by this subscription ID.
  final String? subscription;

  /// Only return invoices for the customer specified by this customer ID.
  final String? customer;

  /// The status of the invoice, one of draft, open, paid, uncollectible, or void
  final InvoiceStatus? status;

  ListInvoicesRequest({
    this.subscription,
    this.customer,
    this.status,
  });

  factory ListInvoicesRequest.fromJson(Map<String, dynamic> json) =>
      _$ListInvoicesRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListInvoicesRequestToJson(this);
}
