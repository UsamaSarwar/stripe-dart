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

  /// A cursor for use in pagination. starting_after is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include starting_after=obj_foo in order to fetch the next page of the list.
  final String? startingAfter;

  /// A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  final int? limit;

  ListInvoicesRequest({
    this.subscription,
    this.customer,
    this.status,
    this.startingAfter,
    this.limit,
  });

  factory ListInvoicesRequest.fromJson(Map<String, dynamic> json) =>
      _$ListInvoicesRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ListInvoicesRequestToJson(this);
}
