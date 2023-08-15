part of '../../messages.dart';

enum _InvoiceObject { invoice }

/// https://stripe.com/docs/api/invoices/object
@JsonSerializable()
class Invoice extends Message {
  final _InvoiceObject object;

  /// Unique identifier for the object. This property is always present unless the invoice is an upcoming invoice. See Retrieve an upcoming invoice for more details.
  final String id;

  /// ID of the latest charge generated for this invoice, if any.
  final String? charge;

  /// Three-letter ISO currency code, in lowercase. Must be a supported currency.
  final String currency;

  /// The ID of the customer who will be billed.
  final String? customer;

  /// An arbitrary string attached to the object. Often useful for displaying to users. Referenced as ‘memo’ in the Dashboard.
  final String? description;

  /// The URL for the hosted invoice page, which allows customers to view and pay an invoice. If the invoice has not been finalized yet, this will be null.
  final String? hostedInvoiceUrl;

  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  final Map<String, dynamic>? metadata;

  /// The PaymentIntent associated with this invoice. The PaymentIntent is generated when the invoice is finalized, and can then be used to pay the invoice. Note that voiding an invoice will cancel the PaymentIntent.
  final String? paymentIntent;

  /// End of the usage period during which invoice items were added to this invoice.
  @TimestampConverter()
  final DateTime? periodEnd;

  /// Start of the usage period during which invoice items were added to this invoice.
  @TimestampConverter()
  final DateTime? periodStart;

  /// The status of the invoice, one of draft, open, paid, uncollectible, or void
  final InvoiceStatus status;

  /// The subscription that this invoice was prepared for, if any.
  final String? subscription;

  /// Total after discounts and taxes.
  final int? total;

  /// The individual line items that make up the invoice. lines is sorted as follows: (1) pending invoice items (including prorations) in reverse chronological order, (2) subscription items in reverse chronological order, and (3) invoice items added after invoice creation in chronological order.
  final DataList<InvoiceLineItem> lines;

  Invoice({
    required this.object,
    required this.id,
    this.charge,
    required this.currency,
    this.customer,
    this.description,
    this.hostedInvoiceUrl,
    this.metadata,
    this.paymentIntent,
    this.periodEnd,
    this.periodStart,
    required this.status,
    this.total,
    this.subscription,
    required this.lines,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}
