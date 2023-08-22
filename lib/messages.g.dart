// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      city: json['city'] as String?,
      country: json['country'] as String?,
      line1: json['line1'] as String?,
      line2: json['line2'] as String?,
      postalCode: json['postal_code'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city', instance.city);
  writeNotNull('country', instance.country);
  writeNotNull('line1', instance.line1);
  writeNotNull('line2', instance.line2);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('state', instance.state);
  return val;
}

BalanceTransaction _$BalanceTransactionFromJson(Map<String, dynamic> json) =>
    BalanceTransaction(
      object: $enumDecode(_$_BalanceTransactionObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: json['amount'] as int,
      fee: json['fee'] as int,
      feeDetails: (json['fee_details'] as List<dynamic>)
          .map((e) => FeeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      net: json['net'] as int,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$BalanceTransactionToJson(BalanceTransaction instance) =>
    <String, dynamic>{
      'object': _$_BalanceTransactionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'amount': instance.amount,
      'fee': instance.fee,
      'fee_details': instance.feeDetails.map((e) => e.toJson()).toList(),
      'net': instance.net,
      'currency': instance.currency,
    };

const _$_BalanceTransactionObjectEnumMap = {
  _BalanceTransactionObject.balance_transaction: 'balance_transaction',
};

FeeDetails _$FeeDetailsFromJson(Map<String, dynamic> json) => FeeDetails(
      amount: json['amount'] as int,
      application: json['application'] as String?,
      currency: json['currency'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$FeeDetailsToJson(FeeDetails instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('application', instance.application);
  val['currency'] = instance.currency;
  val['description'] = instance.description;
  val['type'] = instance.type;
  return val;
}

Charge _$ChargeFromJson(Map<String, dynamic> json) => Charge(
      object: $enumDecode(_$_ChargeObjectEnumMap, json['object']),
      id: json['id'] as String,
      balanceTransaction: json['balance_transaction'] as String,
      paymentMethodDetails: PaymentMethodDetails.fromJson(
          json['payment_method_details'] as Map<String, dynamic>),
      livemode: json['livemode'] as bool,
    );

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
      'object': _$_ChargeObjectEnumMap[instance.object]!,
      'id': instance.id,
      'balance_transaction': instance.balanceTransaction,
      'payment_method_details': instance.paymentMethodDetails.toJson(),
      'livemode': instance.livemode,
    };

const _$_ChargeObjectEnumMap = {
  _ChargeObject.charge: 'charge',
};

PaymentMethodDetails _$PaymentMethodDetailsFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodDetails(
      card: json['card'] == null
          ? null
          : PaymentMethodDetailsCard.fromJson(
              json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodDetailsToJson(
    PaymentMethodDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card', instance.card?.toJson());
  return val;
}

PaymentMethodDetailsCard _$PaymentMethodDetailsCardFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodDetailsCard(
      brand: json['brand'] as String,
      last4: json['last4'] as String,
      expMonth: json['exp_month'] as int,
      expYear: json['exp_year'] as int,
    );

Map<String, dynamic> _$PaymentMethodDetailsCardToJson(
        PaymentMethodDetailsCard instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'last4': instance.last4,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
    };

CheckoutSession _$CheckoutSessionFromJson(Map<String, dynamic> json) =>
    CheckoutSession(
      object: json['object'] as String,
      id: json['id'] as String,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      clientReferenceId: json['client_reference_id'] as String?,
      customer: json['customer'] as String?,
      paymentIntent: json['payment_intent'] as String?,
    );

Map<String, dynamic> _$CheckoutSessionToJson(CheckoutSession instance) {
  final val = <String, dynamic>{
    'object': instance.object,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('client_reference_id', instance.clientReferenceId);
  writeNotNull('customer', instance.customer);
  writeNotNull('payment_intent', instance.paymentIntent);
  val['payment_method_types'] = instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList();
  return val;
}

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.acss_debit: 'acss_debit',
  PaymentMethodType.affirm: 'affirm',
  PaymentMethodType.afterpay_clearpay: 'afterpay_clearpay',
  PaymentMethodType.alipay: 'alipay',
  PaymentMethodType.au_becs_debit: 'au_becs_debit',
  PaymentMethodType.bacs_debit: 'bacs_debit',
  PaymentMethodType.bancontact: 'bancontact',
  PaymentMethodType.blik: 'blik',
  PaymentMethodType.boleto: 'boleto',
  PaymentMethodType.card: 'card',
  PaymentMethodType.cashapp: 'cashapp',
  PaymentMethodType.customer_balance: 'customer_balance',
  PaymentMethodType.eps: 'eps',
  PaymentMethodType.fpx: 'fpx',
  PaymentMethodType.giropay: 'giropay',
  PaymentMethodType.grabpay: 'grabpay',
  PaymentMethodType.ideal: 'ideal',
  PaymentMethodType.klarna: 'klarna',
  PaymentMethodType.konbini: 'konbini',
  PaymentMethodType.link: 'link',
  PaymentMethodType.oxxo: 'oxxo',
  PaymentMethodType.p24: 'p24',
  PaymentMethodType.paynow: 'paynow',
  PaymentMethodType.pix: 'pix',
  PaymentMethodType.promptpay: 'promptpay',
  PaymentMethodType.sepa_debit: 'sepa_debit',
  PaymentMethodType.sofort: 'sofort',
  PaymentMethodType.us_bank_account: 'us_bank_account',
  PaymentMethodType.wechat_pay: 'wechat_pay',
};

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      object: $enumDecode(_$_CustomerObjectEnumMap, json['object']),
      id: json['id'] as String,
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{
    'object': _$_CustomerObjectEnumMap[instance.object]!,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  return val;
}

const _$_CustomerObjectEnumMap = {
  _CustomerObject.customer: 'customer',
};

DataList<T> _$DataListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    DataList<T>(
      object: $enumDecode(_$_SubListObjectEnumMap, json['object']),
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      hasMore: json['has_more'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DataListToJson<T>(
  DataList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': _$_SubListObjectEnumMap[instance.object]!,
      'data': instance.data.map(toJsonT).toList(),
      'has_more': instance.hasMore,
      'url': instance.url,
    };

const _$_SubListObjectEnumMap = {
  _SubListObject.list: 'list',
};

EventData<T> _$EventDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    EventData<T>(
      object: fromJsonT(json['object']),
    );

Map<String, dynamic> _$EventDataToJson<T>(
  EventData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': toJsonT(instance.object),
    };

SubscriptionEvent _$SubscriptionEventFromJson(Map<String, dynamic> json) =>
    SubscriptionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Subscription>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => Subscription.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$SubscriptionEventToJson(SubscriptionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

const _$_EventObjectEnumMap = {
  _EventObject.event: 'event',
};

CustomerEvent _$CustomerEventFromJson(Map<String, dynamic> json) =>
    CustomerEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Customer>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Customer.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$CustomerEventToJson(CustomerEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

ChargeEvent _$ChargeEventFromJson(Map<String, dynamic> json) => ChargeEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Charge>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Charge.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$ChargeEventToJson(ChargeEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

PaymentIntentEvent _$PaymentIntentEventFromJson(Map<String, dynamic> json) =>
    PaymentIntentEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<PaymentIntent>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => PaymentIntent.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$PaymentIntentEventToJson(PaymentIntentEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

RefundEvent _$RefundEventFromJson(Map<String, dynamic> json) => RefundEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Refund>.fromJson(json['data'] as Map<String, dynamic>,
          (value) => Refund.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$RefundEventToJson(RefundEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

CheckoutSessionEvent _$CheckoutSessionEventFromJson(
        Map<String, dynamic> json) =>
    CheckoutSessionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<CheckoutSession>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => CheckoutSession.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$CheckoutSessionEventToJson(
        CheckoutSessionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson(
        (value) => value.toJson(),
      ),
      'type': instance.type,
    };

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) =>
    PaymentIntent(
      object: $enumDecode(_$_PaymentIntentObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: json['amount'] as int,
      amountReceived: json['amount_received'] as int,
      clientSecret: json['client_secret'] as String,
      currency: json['currency'] as String,
      status: json['status'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? const AutomaticPaymentMethods()
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      canceledAt: _$JsonConverterFromJson<int, DateTime>(
          json['canceled_at'], const TimestampConverter().fromJson),
      created: _$JsonConverterFromJson<int, DateTime>(
          json['created'], const TimestampConverter().fromJson),
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      latestCharge: json['latest_charge'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$PaymentIntentToJson(PaymentIntent instance) {
  final val = <String, dynamic>{
    'object': _$_PaymentIntentObjectEnumMap[instance.object]!,
    'id': instance.id,
    'amount': instance.amount,
    'amount_received': instance.amountReceived,
    'automatic_payment_methods': instance.automaticPaymentMethods.toJson(),
    'client_secret': instance.clientSecret,
    'currency': instance.currency,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'canceled_at',
      _$JsonConverterToJson<int, DateTime>(
          instance.canceledAt, const TimestampConverter().toJson));
  writeNotNull(
      'created',
      _$JsonConverterToJson<int, DateTime>(
          instance.created, const TimestampConverter().toJson));
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('latest_charge', instance.latestCharge);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull(
      'payment_method_types',
      instance.paymentMethodTypes
          ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList());
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  return val;
}

const _$_PaymentIntentObjectEnumMap = {
  _PaymentIntentObject.payment_intent: 'payment_intent',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$SetupFutureUsageEnumMap = {
  SetupFutureUsage.on_session: 'on_session',
  SetupFutureUsage.off_session: 'off_session',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

AutomaticPaymentMethods _$AutomaticPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    AutomaticPaymentMethods(
      enabled: json['enabled'] as bool? ?? false,
    );

Map<String, dynamic> _$AutomaticPaymentMethodsToJson(
        AutomaticPaymentMethods instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PortalSession _$PortalSessionFromJson(Map<String, dynamic> json) =>
    PortalSession(
      object: json['object'] as String,
      id: json['id'] as String,
      customer: json['customer'] as String,
      livemode: json['livemode'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PortalSessionToJson(PortalSession instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'url': instance.url,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      object: $enumDecode(_$_PriceObjectEnumMap, json['object']),
      id: json['id'] as String,
      active: json['active'] as bool,
      currency: json['currency'] as String,
      product: json['product'] as String,
      type: $enumDecode(_$PriceTypeEnumMap, json['type']),
      unitAmount: json['unit_amount'] as int?,
    );

Map<String, dynamic> _$PriceToJson(Price instance) {
  final val = <String, dynamic>{
    'object': _$_PriceObjectEnumMap[instance.object]!,
    'id': instance.id,
    'active': instance.active,
    'currency': instance.currency,
    'product': instance.product,
    'type': _$PriceTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unit_amount', instance.unitAmount);
  return val;
}

const _$_PriceObjectEnumMap = {
  _PriceObject.price: 'price',
};

const _$PriceTypeEnumMap = {
  PriceType.one_time: 'one_time',
  PriceType.recurring: 'recurring',
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      object: $enumDecode(_$_ProductObjectEnumMap, json['object']),
      id: json['id'] as String,
      active: json['active'] as bool,
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) {
  final val = <String, dynamic>{
    'object': _$_ProductObjectEnumMap[instance.object]!,
    'id': instance.id,
    'active': instance.active,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  val['name'] = instance.name;
  return val;
}

const _$_ProductObjectEnumMap = {
  _ProductObject.product: 'product',
};

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
      object: $enumDecode(_$_RefundObjectEnumMap, json['object']),
      id: json['id'] as String,
    );

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
      'object': _$_RefundObjectEnumMap[instance.object]!,
      'id': instance.id,
    };

const _$_RefundObjectEnumMap = {
  _RefundObject.refund: 'refund',
};

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      object: $enumDecode(_$_InvoiceObjectEnumMap, json['object']),
      id: json['id'] as String,
      charge: json['charge'] as String?,
      currency: json['currency'] as String,
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      hostedInvoiceUrl: json['hosted_invoice_url'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      paymentIntent: json['payment_intent'] as String?,
      periodEnd: _$JsonConverterFromJson<int, DateTime>(
          json['period_end'], const TimestampConverter().fromJson),
      periodStart: _$JsonConverterFromJson<int, DateTime>(
          json['period_start'], const TimestampConverter().fromJson),
      status: $enumDecode(_$InvoiceStatusEnumMap, json['status']),
      total: json['total'] as int?,
      subscription: json['subscription'] as String?,
      lines: DataList<InvoiceLineItem>.fromJson(
          json['lines'] as Map<String, dynamic>,
          (value) => InvoiceLineItem.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) {
  final val = <String, dynamic>{
    'object': _$_InvoiceObjectEnumMap[instance.object]!,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge', instance.charge);
  val['currency'] = instance.currency;
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('hosted_invoice_url', instance.hostedInvoiceUrl);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('payment_intent', instance.paymentIntent);
  writeNotNull(
      'period_end',
      _$JsonConverterToJson<int, DateTime>(
          instance.periodEnd, const TimestampConverter().toJson));
  writeNotNull(
      'period_start',
      _$JsonConverterToJson<int, DateTime>(
          instance.periodStart, const TimestampConverter().toJson));
  val['status'] = _$InvoiceStatusEnumMap[instance.status]!;
  writeNotNull('subscription', instance.subscription);
  writeNotNull('total', instance.total);
  val['lines'] = instance.lines.toJson(
    (value) => value.toJson(),
  );
  return val;
}

const _$_InvoiceObjectEnumMap = {
  _InvoiceObject.invoice: 'invoice',
};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.draft: 'draft',
  InvoiceStatus.open: 'open',
  InvoiceStatus.voided: 'void',
  InvoiceStatus.paid: 'paid',
  InvoiceStatus.uncollectible: 'uncollectible',
};

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      metadata: json['metadata'] as Map<String, dynamic>?,
      id: json['id'] as String,
      customer: json['customer'] as String?,
      card: json['card'] == null
          ? null
          : PaymentMethodDetailsCard.fromJson(
              json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  val['id'] = instance.id;
  writeNotNull('customer', instance.customer);
  writeNotNull('card', instance.card?.toJson());
  return val;
}

InvoiceLineItem _$InvoiceLineItemFromJson(Map<String, dynamic> json) =>
    InvoiceLineItem(
      object: json['object'] as String,
      id: json['id'] as String,
      currency: json['currency'] as String,
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
      type: json['type'] as String,
    );

Map<String, dynamic> _$InvoiceLineItemToJson(InvoiceLineItem instance) {
  final val = <String, dynamic>{
    'object': instance.object,
    'id': instance.id,
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('quantity', instance.quantity);
  val['type'] = instance.type;
  return val;
}

UsageRecord _$UsageRecordFromJson(Map<String, dynamic> json) => UsageRecord(
      id: json['id'] as String,
      quantity: json['quantity'] as int,
      subscriptionItem: json['subscription_item'] as String,
      timestamp: const TimestampConverter().fromJson(json['timestamp'] as int),
    );

Map<String, dynamic> _$UsageRecordToJson(UsageRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'subscription_item': instance.subscriptionItem,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };

CreateSubscriptionItemInline _$CreateSubscriptionItemInlineFromJson(
        Map<String, dynamic> json) =>
    CreateSubscriptionItemInline(
      metadata: json['metadata'] as Map<String, dynamic>?,
      price: json['price'] as String?,
      quantity: json['quantity'] as int?,
      priceData: json['price_data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CreateSubscriptionItemInlineToJson(
    CreateSubscriptionItemInline instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('price', instance.price);
  writeNotNull('price_data', instance.priceData);
  writeNotNull('quantity', instance.quantity);
  return val;
}

Period _$PeriodFromJson(Map<String, dynamic> json) => Period(
      start: _$JsonConverterFromJson<int, DateTime>(
          json['start'], const TimestampConverter().fromJson),
      end: _$JsonConverterFromJson<int, DateTime>(
          json['end'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$PeriodToJson(Period instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'start',
      _$JsonConverterToJson<int, DateTime>(
          instance.start, const TimestampConverter().toJson));
  writeNotNull(
      'end',
      _$JsonConverterToJson<int, DateTime>(
          instance.end, const TimestampConverter().toJson));
  return val;
}

UsageRecordSummary _$UsageRecordSummaryFromJson(Map<String, dynamic> json) =>
    UsageRecordSummary(
      object: json['object'] as String,
      id: json['id'] as String,
      invoice: json['invoice'] as String?,
      subscriptionItem: json['subscription_item'] as String,
      totalUsage: json['total_usage'] as int,
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsageRecordSummaryToJson(UsageRecordSummary instance) {
  final val = <String, dynamic>{
    'object': instance.object,
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('invoice', instance.invoice);
  val['subscription_item'] = instance.subscriptionItem;
  val['total_usage'] = instance.totalUsage;
  val['period'] = instance.period.toJson();
  return val;
}

ShippingSpecification _$ShippingSpecificationFromJson(
        Map<String, dynamic> json) =>
    ShippingSpecification(
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      name: json['name'] as String,
      carrier: json['carrier'] as String?,
      phone: json['phone'] as String?,
      trackingNumber: json['tracking_number'] as String?,
    );

Map<String, dynamic> _$ShippingSpecificationToJson(
    ShippingSpecification instance) {
  final val = <String, dynamic>{
    'address': instance.address.toJson(),
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('carrier', instance.carrier);
  writeNotNull('phone', instance.phone);
  writeNotNull('tracking_number', instance.trackingNumber);
  return val;
}

CreateInvoiceRequest _$CreateInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    CreateInvoiceRequest(
      customer: json['customer'] as String?,
      subscription: json['subscription'] as String?,
      description: json['description'] as String?,
      currency: json['currency'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      collectionMethod: $enumDecodeNullable(
          _$CollectionMethodEnumMap, json['collection_method']),
      autoAdvance: json['auto_advance'] as bool?,
    );

Map<String, dynamic> _$CreateInvoiceRequestToJson(
    CreateInvoiceRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('collection_method',
      _$CollectionMethodEnumMap[instance.collectionMethod]);
  writeNotNull('auto_advance', instance.autoAdvance);
  writeNotNull('customer', instance.customer);
  writeNotNull('subscription', instance.subscription);
  return val;
}

const _$CollectionMethodEnumMap = {
  CollectionMethod.chargeAutomatically: 'charge_automatically',
  CollectionMethod.sendInvoice: 'send_invoice',
};

UpdateInvoiceRequest _$UpdateInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateInvoiceRequest(
      id: json['id'] as String,
      description: json['description'] as String?,
      currency: json['currency'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      collectionMethod: $enumDecodeNullable(
          _$CollectionMethodEnumMap, json['collection_method']),
      autoAdvance: json['auto_advance'] as bool?,
    );

Map<String, dynamic> _$UpdateInvoiceRequestToJson(
    UpdateInvoiceRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('collection_method',
      _$CollectionMethodEnumMap[instance.collectionMethod]);
  writeNotNull('auto_advance', instance.autoAdvance);
  val['id'] = instance.id;
  return val;
}

ListUsageRecordSummariesRequest _$ListUsageRecordSummariesRequestFromJson(
        Map<String, dynamic> json) =>
    ListUsageRecordSummariesRequest(
      subscriptionItem: json['subscription_item'] as String,
      limit: json['limit'] as int?,
      endingBefore: json['ending_before'] as String?,
      startingAfter: json['starting_after'] as String?,
    );

Map<String, dynamic> _$ListUsageRecordSummariesRequestToJson(
    ListUsageRecordSummariesRequest instance) {
  final val = <String, dynamic>{
    'subscription_item': instance.subscriptionItem,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('ending_before', instance.endingBefore);
  writeNotNull('starting_after', instance.startingAfter);
  return val;
}

ListInvoicesRequest _$ListInvoicesRequestFromJson(Map<String, dynamic> json) =>
    ListInvoicesRequest(
      subscription: json['subscription'] as String?,
      customer: json['customer'] as String?,
      status: $enumDecodeNullable(_$InvoiceStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ListInvoicesRequestToJson(ListInvoicesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subscription', instance.subscription);
  writeNotNull('customer', instance.customer);
  writeNotNull('status', _$InvoiceStatusEnumMap[instance.status]);
  return val;
}

CreateUsageRecordRequest _$CreateUsageRecordRequestFromJson(
        Map<String, dynamic> json) =>
    CreateUsageRecordRequest(
      subscriptionItem: json['subscription_item'] as String,
      quantity: json['quantity'] as int,
      action:
          $enumDecodeNullable(_$CreateUsageRecordActionEnumMap, json['action']),
      timestamp: _$JsonConverterFromJson<int, DateTime>(
          json['timestamp'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$CreateUsageRecordRequestToJson(
    CreateUsageRecordRequest instance) {
  final val = <String, dynamic>{
    'subscription_item': instance.subscriptionItem,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', _$CreateUsageRecordActionEnumMap[instance.action]);
  writeNotNull(
      'timestamp',
      _$JsonConverterToJson<int, DateTime>(
          instance.timestamp, const TimestampConverter().toJson));
  return val;
}

const _$CreateUsageRecordActionEnumMap = {
  CreateUsageRecordAction.set: 'set',
  CreateUsageRecordAction.increment: 'increment',
};

CreateCheckoutSessionRequest _$CreateCheckoutSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCheckoutSessionRequest(
      successUrl: json['success_url'] as String,
      cancelUrl: json['cancel_url'] as String,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      mode: $enumDecodeNullable(_$SessionModeEnumMap, json['mode']),
      clientReferenceId: json['client_reference_id'] as String?,
      customerEmail: json['customer_email'] as String?,
      customer: json['customer'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      billingAddressCollection: $enumDecodeNullable(
          _$BillingAddressCollectionEnumMap,
          json['billing_address_collection']),
      automaticTax: json['automatic_tax'] == null
          ? null
          : AutomaticTax.fromJson(
              json['automatic_tax'] as Map<String, dynamic>),
      taxIdCollection: json['tax_id_collection'] == null
          ? null
          : TaxIdCollection.fromJson(
              json['tax_id_collection'] as Map<String, dynamic>),
      paymentIntentData: json['payment_intent_data'] == null
          ? null
          : PaymentIntentData.fromJson(
              json['payment_intent_data'] as Map<String, dynamic>),
      subscriptionData: json['subscription_data'] == null
          ? null
          : SubscriptionData.fromJson(
              json['subscription_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCheckoutSessionRequestToJson(
    CreateCheckoutSessionRequest instance) {
  final val = <String, dynamic>{
    'success_url': instance.successUrl,
    'cancel_url': instance.cancelUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mode', _$SessionModeEnumMap[instance.mode]);
  val['payment_method_types'] = instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList();
  writeNotNull('client_reference_id', instance.clientReferenceId);
  writeNotNull('customer_email', instance.customerEmail);
  writeNotNull('customer', instance.customer);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('billing_address_collection',
      _$BillingAddressCollectionEnumMap[instance.billingAddressCollection]);
  writeNotNull('automatic_tax', instance.automaticTax?.toJson());
  writeNotNull('tax_id_collection', instance.taxIdCollection?.toJson());
  writeNotNull('payment_intent_data', instance.paymentIntentData?.toJson());
  writeNotNull('subscription_data', instance.subscriptionData?.toJson());
  return val;
}

const _$SessionModeEnumMap = {
  SessionMode.payment: 'payment',
  SessionMode.setup: 'setup',
  SessionMode.subscription: 'subscription',
};

const _$BillingAddressCollectionEnumMap = {
  BillingAddressCollection.auto: 'auto',
  BillingAddressCollection.required: 'required',
};

LineItem _$LineItemFromJson(Map<String, dynamic> json) => LineItem(
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      quantity: json['quantity'] as int?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      priceData: json['price_data'] == null
          ? null
          : PriceData.fromJson(json['price_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LineItemToJson(LineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('images', instance.images);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('description', instance.description);
  writeNotNull('price_data', instance.priceData?.toJson());
  writeNotNull('price', instance.price);
  return val;
}

PriceData _$PriceDataFromJson(Map<String, dynamic> json) => PriceData(
      currency: json['currency'] as String,
      product: json['product'] as String?,
      unitAmount: json['unit_amount'] as int?,
      productData: json['product_data'] == null
          ? null
          : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceDataToJson(PriceData instance) {
  final val = <String, dynamic>{
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product);
  writeNotNull('unit_amount', instance.unitAmount);
  writeNotNull('product_data', instance.productData?.toJson());
  return val;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
      name: json['name'] as String,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('images', instance.images);
  return val;
}

AutomaticTax _$AutomaticTaxFromJson(Map<String, dynamic> json) => AutomaticTax(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$AutomaticTaxToJson(AutomaticTax instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

TaxIdCollection _$TaxIdCollectionFromJson(Map<String, dynamic> json) =>
    TaxIdCollection(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$TaxIdCollectionToJson(TaxIdCollection instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PaymentIntentData _$PaymentIntentDataFromJson(Map<String, dynamic> json) =>
    PaymentIntentData(
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
    );

Map<String, dynamic> _$PaymentIntentDataToJson(PaymentIntentData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  return val;
}

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) =>
    SubscriptionData(
      trialEnd: json['trial_end'] as int?,
      trialPeriodDays: json['trial_period_days'] as int?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SubscriptionDataToJson(SubscriptionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('trial_end', instance.trialEnd);
  writeNotNull('trial_period_days', instance.trialPeriodDays);
  writeNotNull('metadata', instance.metadata);
  return val;
}

CreateCustomerRequest _$CreateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCustomerRequest(
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$CreateCustomerRequestToJson(
    CreateCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('phone_number', instance.phoneNumber);
  return val;
}

CreatePaymentIntentRequest _$CreatePaymentIntentRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentIntentRequest(
      amount: json['amount'] as int,
      currency: json['currency'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      confirm: json['confirm'] as bool?,
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      offSession: json['off_session'] as bool?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
          _$SetupFutureUsageEnumMap, json['setup_future_usage']),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$CreatePaymentIntentRequestToJson(
    CreatePaymentIntentRequest instance) {
  final val = <String, dynamic>{
    'amount': instance.amount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'automatic_payment_methods', instance.automaticPaymentMethods?.toJson());
  val['currency'] = instance.currency;
  writeNotNull('confirm', instance.confirm);
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull(
      'payment_method_types',
      instance.paymentMethodTypes
          ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList());
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('setup_future_usage',
      _$SetupFutureUsageEnumMap[instance.setupFutureUsage]);
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  return val;
}

CreatePortalSessionRequest _$CreatePortalSessionRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePortalSessionRequest(
      customer: json['customer'] as String,
      returnUrl: json['return_url'] as String?,
    );

Map<String, dynamic> _$CreatePortalSessionRequestToJson(
    CreatePortalSessionRequest instance) {
  final val = <String, dynamic>{
    'customer': instance.customer,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_url', instance.returnUrl);
  return val;
}

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) =>
    CreateRefundRequest(
      charge: json['charge'] as String?,
      amount: json['amount'] as int?,
      paymentIntent: json['payment_intent'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$CreateRefundRequestToJson(CreateRefundRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge', instance.charge);
  writeNotNull('amount', instance.amount);
  writeNotNull('payment_intent', instance.paymentIntent);
  writeNotNull('reason', instance.reason);
  return val;
}

ListPricesRequest _$ListPricesRequestFromJson(Map<String, dynamic> json) =>
    ListPricesRequest(
      active: json['active'] as bool?,
      currency: json['currency'] as String?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$ListPricesRequestToJson(ListPricesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  writeNotNull('currency', instance.currency);
  writeNotNull('product', instance.product);
  return val;
}

ListProductsRequest _$ListProductsRequestFromJson(Map<String, dynamic> json) =>
    ListProductsRequest(
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$ListProductsRequestToJson(ListProductsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  return val;
}

ListSubscriptionsRequest _$ListSubscriptionsRequestFromJson(
        Map<String, dynamic> json) =>
    ListSubscriptionsRequest(
      customer: json['customer'] as String?,
      price: json['price'] as String?,
      status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ListSubscriptionsRequestToJson(
    ListSubscriptionsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  writeNotNull('price', instance.price);
  writeNotNull('status', _$SubscriptionStatusEnumMap[instance.status]);
  return val;
}

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.incomplete: 'incomplete',
  SubscriptionStatus.incomplete_expired: 'incomplete_expired',
  SubscriptionStatus.trialing: 'trialing',
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.past_due: 'past_due',
  SubscriptionStatus.canceled: 'canceled',
  SubscriptionStatus.unpaid: 'unpaid',
  SubscriptionStatus.all: 'all',
  SubscriptionStatus.ended: 'ended',
};

UpdateCustomerRequest _$UpdateCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateCustomerRequest(
      id: json['id'] as String,
      description: json['description'] as String?,
      email: json['email'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$UpdateCustomerRequestToJson(
    UpdateCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('phone_number', instance.phoneNumber);
  val['id'] = instance.id;
  return val;
}

UpdateSubscriptionRequest _$UpdateSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateSubscriptionRequest(
      id: json['id'] as String,
      cancelAtPeriodEnd: json['cancel_at_period_end'] as bool?,
      defaultPaymentMethod: json['default_payment_method'] as String?,
      description: json['description'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      paymentBehavior: $enumDecodeNullable(
          _$PaymentBehaviorEnumMap, json['payment_behavior']),
    );

Map<String, dynamic> _$UpdateSubscriptionRequestToJson(
    UpdateSubscriptionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cancel_at_period_end', instance.cancelAtPeriodEnd);
  writeNotNull('default_payment_method', instance.defaultPaymentMethod);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull(
      'payment_behavior', _$PaymentBehaviorEnumMap[instance.paymentBehavior]);
  val['id'] = instance.id;
  return val;
}

const _$PaymentBehaviorEnumMap = {
  PaymentBehavior.allowIncomplete: 'allow_incomplete',
  PaymentBehavior.errorIfIncomplete: 'error_if_incomplete',
  PaymentBehavior.pendingIfIncomplete: 'pending_if_incomplete',
  PaymentBehavior.defaultIncomplete: 'default_incomplete',
};

CreateSubscriptionRequest _$CreateSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateSubscriptionRequest(
      customer: json['customer'] as String,
      cancelAtPeriodEnd: json['cancel_at_period_end'] as bool?,
      currency: json['currency'] as String?,
      defaultPaymentMethod: json['default_payment_method'] as String?,
      description: json['description'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      paymentBehavior: $enumDecodeNullable(
          _$PaymentBehaviorEnumMap, json['payment_behavior']),
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              CreateSubscriptionItemInline.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateSubscriptionRequestToJson(
    CreateSubscriptionRequest instance) {
  final val = <String, dynamic>{
    'customer': instance.customer,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cancel_at_period_end', instance.cancelAtPeriodEnd);
  writeNotNull('currency', instance.currency);
  writeNotNull('default_payment_method', instance.defaultPaymentMethod);
  writeNotNull('description', instance.description);
  writeNotNull('metadata', instance.metadata);
  writeNotNull(
      'payment_behavior', _$PaymentBehaviorEnumMap[instance.paymentBehavior]);
  val['items'] = instance.items.map((e) => e.toJson()).toList();
  return val;
}

AttachPaymentMethodRequest _$AttachPaymentMethodRequestFromJson(
        Map<String, dynamic> json) =>
    AttachPaymentMethodRequest(
      customer: json['customer'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$AttachPaymentMethodRequestToJson(
        AttachPaymentMethodRequest instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      'id': instance.id,
    };

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      object: $enumDecode(_$_SubscriptionObjectEnumMap, json['object']),
      id: json['id'] as String,
      created: json['created'] as int,
      customer: json['customer'] as String,
      status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
      items: DataList<SubscriptionItem>.fromJson(
          json['items'] as Map<String, dynamic>,
          (value) => SubscriptionItem.fromJson(value as Map<String, dynamic>)),
      currentPeriodStart: const TimestampConverter()
          .fromJson(json['current_period_start'] as int),
      currentPeriodEnd: const TimestampConverter()
          .fromJson(json['current_period_end'] as int),
      metadata: json['metadata'] as Map<String, dynamic>?,
      defaultPaymentMethod: json['default_payment_method'] as String?,
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{
    'object': _$_SubscriptionObjectEnumMap[instance.object]!,
    'id': instance.id,
    'created': instance.created,
    'customer': instance.customer,
    'current_period_start':
        const TimestampConverter().toJson(instance.currentPeriodStart),
    'current_period_end':
        const TimestampConverter().toJson(instance.currentPeriodEnd),
    'status': _$SubscriptionStatusEnumMap[instance.status]!,
    'items': instance.items.toJson(
      (value) => value.toJson(),
    ),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('default_payment_method', instance.defaultPaymentMethod);
  return val;
}

const _$_SubscriptionObjectEnumMap = {
  _SubscriptionObject.subscription: 'subscription',
};

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) =>
    SubscriptionItem(
      object: $enumDecode(_$_SubscriptionItemObjectEnumMap, json['object']),
      id: json['id'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      subscription: json['subscription'] as String,
    );

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) =>
    <String, dynamic>{
      'object': _$_SubscriptionItemObjectEnumMap[instance.object]!,
      'id': instance.id,
      'price': instance.price.toJson(),
      'subscription': instance.subscription,
    };

const _$_SubscriptionItemObjectEnumMap = {
  _SubscriptionItemObject.subscription_item: 'subscription_item',
};
