library stripe;

import 'package:meta/meta.dart';
import 'package:stripe/src/resources/account.dart';
import 'package:stripe/src/resources/account_links.dart';
import 'package:stripe/src/resources/invoice.dart';
import 'package:stripe/src/resources/invoice_item.dart';
import 'package:stripe/src/resources/subscription_item.dart';
import 'package:stripe/src/resources/usage_record.dart';

import 'src/client.dart';
import 'src/resources/balance_transaction.dart';
import 'src/resources/charge.dart';
import 'src/resources/checkout_session.dart';
import 'src/resources/customer.dart';
import 'src/resources/payment_intent.dart';
import 'src/resources/payment_method.dart';
import 'src/resources/portal_session.dart';
import 'src/resources/price.dart';
import 'src/resources/product.dart';
import 'src/resources/refund.dart';
import 'src/resources/subscription.dart';

export 'messages.dart';
export 'src/webhook.dart';
export 'src/messages/enums/enums.dart';

/// [Stripe] is the Class that provides the Interface for external calls via the
/// Stripe API.
///
/// Create an instance of this class, and use it like this:
///
///     final stripe = Stripe('privateApiKey');
///     final charge = await stripe.charge.retrieve(chargeId);
class Stripe {
  /// Our actual client implementation that communicates with Stripe.
  ///
  /// You should not need to access this, it is mostly exposed for testing, but
  /// you can use it to make requests that have not yet been implemented.
  final Client client;

  /// https://stripe.com/docs/api/checkout/sessions
  final CheckoutSessionResource checkoutSession;

  /// https://stripe.com/docs/api/billing_portal/sessions
  final PortalSessionResource portalSession;

  /// https://stripe.com/docs/api/customers
  final CustomerResource customer;

  /// https://stripe.com/docs/api/refunds
  final RefundResource refund;

  /// https://stripe.com/docs/api/payment_intents
  final PaymentIntentResource paymentIntent;

  /// https://stripe.com/docs/api/prices
  final PriceResource price;

  /// https://stripe.com/docs/api/products
  final ProductResource product;

  /// https://stripe.com/docs/api/charges
  final ChargeResource charge;

  /// https://stripe.com/docs/api/subscriptions
  final SubscriptionResource subscription;

  /// https://stripe.com/docs/api/balance_transactions
  final BalanceTransactionResource balanceTransaction;

  /// https://stripe.com/docs/api/invoices
  final InvoiceResource invoice;

  /// https://stripe.com/docs/api/usage_records
  final UsageRecordResource usageRecord;

  /// https://stripe.com/docs/api/payment_methods
  final PaymentMethodResource paymentMethod;

  /// https://stripe.com/docs/api/account
  final AccountsResource account;

  /// https://stripe.com/docs/api/account_links
  final AccountLinksResource accountLink;

  /// https://stripe.com/docs/api/invoiceitems
  final InvoiceItemsResource invoiceItem;

  /// https://stripe.com/docs/api/subscription_items
  final SubscriptionItemResource subscriptionItem;

  factory Stripe(String apiKey) {
    final client = Client(apiKey: apiKey);
    return Stripe.withClient(client);
  }

  @visibleForTesting
  Stripe.withClient(this.client)
      : checkoutSession = CheckoutSessionResource(client),
        portalSession = PortalSessionResource(client),
        customer = CustomerResource(client),
        refund = RefundResource(client),
        paymentIntent = PaymentIntentResource(client),
        price = PriceResource(client),
        product = ProductResource(client),
        subscription = SubscriptionResource(client),
        charge = ChargeResource(client),
        balanceTransaction = BalanceTransactionResource(client),
        invoice = InvoiceResource(client),
        usageRecord = UsageRecordResource(client),
        paymentMethod = PaymentMethodResource(client),
        account = AccountsResource(client),
        accountLink = AccountLinksResource(client),
        invoiceItem = InvoiceItemsResource(client),
        subscriptionItem = SubscriptionItemResource(client);
}
