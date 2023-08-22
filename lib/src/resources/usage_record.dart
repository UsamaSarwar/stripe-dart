import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class UsageRecordResource extends Resource<UsageRecord> {
  UsageRecordResource(Client client) : super(client);

  Future<DataList<UsageRecordSummary>> listUsageRecordSummaries(
    ListUsageRecordSummariesRequest request,
  ) async {
    final map = await get(
      'subscription_items/${request.subscriptionItem}/usage_record_summaries',
      queryParameters: request.toJson(),
    );

    return DataList<UsageRecordSummary>.fromJson(
      map,
      (value) => UsageRecordSummary.fromJson(value as Map<String, dynamic>),
    );
  }

  Future<UsageRecord> create(CreateUsageRecordRequest request) async {
    final response = await post(
      'subscription_items/${request.subscriptionItem}/usage_records',
      data: request.toJson(),
    );

    return UsageRecord.fromJson(response);
  }
}
