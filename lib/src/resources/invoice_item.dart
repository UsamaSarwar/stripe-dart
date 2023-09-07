import '../../messages.dart';
import '../client.dart';
import '_resource.dart';

class InvoiceItemsResource extends Resource<InvoiceItem> {
  InvoiceItemsResource(Client client) : super(client);

  Future<InvoiceItem> create(CreateInvoiceItemRequest request) async {
    final response = await post(
      'invoiceitems',
      data: request.toJson(),
    );

    return InvoiceItem.fromJson(response);
  }
}
