import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class SubscriptionItemResource extends Resource<SubscriptionItem> {
  final Client client;
  SubscriptionItemResource(this.client) : super(client);

  Future<SubscriptionItem> retrieve(String id) async {
    final response = await get('subscription_items/$id');
    return SubscriptionItem.fromJson(response);
  }

  Future<DataList<SubscriptionItem>> list([
    ListSubscriptionItemsRequest? request,
  ]) async {
    final map =
        await get('subscription_items', queryParameters: request?.toJson());
    return DataList<SubscriptionItem>.fromJson(
      map,
      (value) => SubscriptionItem.fromJson(value as Map<String, dynamic>),
    );
  }

  Future<SubscriptionItem> create(CreateSubscriptionItemRequest request) async {
    final response = await post(
      'subscription_items',
      data: request.toJson(),
    );
    return SubscriptionItem.fromJson(response);
  }

  Future<SubscriptionItem> update(UpdateSubscriptionItemRequest request) async {
    final response = await post(
      'subscription_items/${request.id}',
      data: request.toJson(),
    );
    return SubscriptionItem.fromJson(response);
  }

  Future<void> delete(String id) async {
    await client.delete(
      'subscription_items/$id',
    );
  }
}
