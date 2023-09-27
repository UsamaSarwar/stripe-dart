part of '../../../messages.dart';

/// https://stripe.com/docs/api/susbcriptions/search
@JsonSerializable()
class SearchSusbcriptionsRequest {
  /// The search query string. See search query language and the list of supported query fields for customers.
  final String query;

  /// A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  final int? limit;

  SearchSusbcriptionsRequest({
    required this.query,
    this.limit,
  });

  factory SearchSusbcriptionsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchSusbcriptionsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SearchSusbcriptionsRequestToJson(this);
}
