part of '../../../messages.dart';

/// https://stripe.com/docs/api/subscription_items/create
@JsonSerializable()
class CreateSubscriptionItemRequest {
  /// The identifier of the subscription to modify.
  final String subscription;

  /// The ID of the price object.
  final String? price;

  /// The quantity you’d like to apply to the subscription item you’re creating.
  final int? quantity;

  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata.
  final Map<String, String>? metadata;

  /// Only applies to subscriptions with collection_method=charge_automatically.
  ///
  /// Use allow_incomplete to create subscriptions with status=incomplete if the first invoice cannot be paid. Creating subscriptions with this status allows you to manage scenarios where additional user actions are needed to pay a subscription’s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the SCA Migration Guide for Billing to learn more. This is the default behavior.
  ///
  /// Use default_incomplete to create Subscriptions with status=incomplete when the first invoice requires payment, otherwise start as active. Subscriptions transition to status=active when successfully confirming the payment intent on the first invoice. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, SCA regulation, or collecting a mandate for a bank debit payment method. If the payment intent is not confirmed within 23 hours subscriptions transition to status=incomplete_expired, which is a terminal state.
  ///
  /// Use error_if_incomplete if you want Stripe to return an HTTP 402 status code if a subscription’s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the changelog to learn more.
  ///
  /// pending_if_incomplete is only used with updates and cannot be passed when creating a subscription.
  ///
  /// Subscriptions with collection_method=send_invoice are automatically activated regardless of the first invoice status.
  final PaymentBehavior? paymentBehavior;

  CreateSubscriptionItemRequest({
    required this.subscription,
    this.price,
    this.quantity,
    this.metadata,
    this.paymentBehavior,
  });

  factory CreateSubscriptionItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSubscriptionItemRequestToJson(this);
}
