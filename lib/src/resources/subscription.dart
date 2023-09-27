import 'dart:async';

import 'package:dio/dio.dart';
import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class SubscriptionResource extends Resource<Subscription> {
  final Client client;
  SubscriptionResource(this.client) : super(client);

  Future<Subscription> retrieve(String id) async {
    final response = await get('subscriptions/$id');
    return Subscription.fromJson(response);
  }

  Future<DataList<Subscription>> list([
    ListSubscriptionsRequest? request,
  ]) async {
    final map = await get('subscriptions', queryParameters: request?.toJson());
    return DataList<Subscription>.fromJson(
      map,
      (value) => Subscription.fromJson(value as Map<String, dynamic>),
    );
  }

  Future<Subscription> cancel(
    String id, {
    String? idempotencyKey,
  }) async {
    // ignore: invalid_use_of_visible_for_testing_member
    final response = await client.dio.delete<Map<String, dynamic>>(
      'subscriptions/$id',
      options: Options(
        headers: {'Idempotency-Key': idempotencyKey},
      ),
    );

    return Subscription.fromJson(client.processResponse(response));
  }

  Future<Subscription> create(CreateSubscriptionRequest request) async {
    final response = await post(
      'subscriptions',
      data: request.toJson(),
    );
    return Subscription.fromJson(response);
  }

  Future<Subscription> update(UpdateSubscriptionRequest request) async {
    final response = await post(
      'subscriptions/${request.id}',
      data: request.toJson(),
    );
    return Subscription.fromJson(response);
  }

  Future<DataList<Subscription>> search(
      SearchSusbcriptionsRequest request) async {
    final map = await get(
      'subscriptions/search',
      queryParameters: request.toJson(),
    );

    return DataList<Subscription>.fromJson(
      map,
      (value) => Subscription.fromJson(value as Map<String, dynamic>),
    );
  }
}
