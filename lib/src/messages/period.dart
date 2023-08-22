part of '../../messages.dart';

/// https://stripe.com/docs/api/charges/object
@JsonSerializable()
class Period extends Message {
  @TimestampConverter()
  final DateTime? start;

  @TimestampConverter()
  final DateTime? end;

  Period({
    this.start,
    this.end,
  });

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}
