part of '../../../messages.dart';

/// https://stripe.com/docs/api/invoices/update

@JsonSerializable()
class UpdateInvoiceRequest extends _InvoiceRequest {
  /// Unique identifier for the object.
  final String id;

  UpdateInvoiceRequest({
    required this.id,
    String? description,
    String? currency,
    Map<String, String>? metadata,
    CollectionMethod? collectionMethod,
    bool? autoAdvance,
  }) : super(
          description: description,
          currency: currency,
          metadata: metadata,
          collectionMethod: collectionMethod,
          autoAdvance: autoAdvance,
        );

  factory UpdateInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateInvoiceRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateInvoiceRequestToJson(this)..remove('id');
}
