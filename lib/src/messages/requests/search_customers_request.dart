part of '../../../messages.dart';

/// https://stripe.com/docs/api/customers/search
@JsonSerializable()
class SearchCustomersRequest {
  /// The search query string. See search query language and the list of supported query fields for customers.
  final String query;

  /// A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  final int? limit;

  SearchCustomersRequest({
    required this.query,
    this.limit,
  });

  factory SearchCustomersRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchCustomersRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SearchCustomersRequestToJson(this);
}
