part of '../../messages.dart';

/// https://stripe.com/docs/api/invoiceitems/object
@JsonSerializable()
class InvoiceItem extends Message {
  final String id;
  final int? amount;
  final int? quantity;
  final String? invoice;
  final String? description;
  final String? currency;

  @JsonKey(readValue: _readUnitAmountFromPrice)
  final int? unitAmount;

  InvoiceItem({
    required this.id,
    this.amount,
    this.quantity,
    this.invoice,
    this.description,
    this.currency,
    this.unitAmount,
  });

  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceItemToJson(this);
}

int? _readUnitAmountFromPrice(Map json, String key) {
  if (json.containsKey('price')) {
    return json['price']['unit_amount'] as int?;
  }
  return null;
}
