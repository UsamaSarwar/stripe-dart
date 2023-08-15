import 'package:json_annotation/json_annotation.dart';

enum CollectionMethod {
  @JsonValue('charge_automatically')
  chargeAutomatically,
  @JsonValue('send_invoice')
  sendInvoice
}
