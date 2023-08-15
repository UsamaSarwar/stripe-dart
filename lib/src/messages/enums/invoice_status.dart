import 'package:json_annotation/json_annotation.dart';

enum InvoiceStatus {
  draft,
  open,
  @JsonValue('void')
  voided,
  paid,
  uncollectible,
}
