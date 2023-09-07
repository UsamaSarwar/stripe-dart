import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class InvoiceResource extends Resource<Invoice> {
  InvoiceResource(Client client) : super(client);

  Future<Invoice> create(CreateInvoiceRequest request) async {
    final response = await post(
      'invoices',
      data: request.toJson(),
    );
    return Invoice.fromJson(response);
  }

  Future<Invoice> retrieve(String invoiceId) async {
    final map = await get('invoices/$invoiceId');
    return Invoice.fromJson(map);
  }

  Future<Invoice> update(UpdateInvoiceRequest request) async {
    final response =
        await post('invoices/${request.id}', data: request.toJson());
    return Invoice.fromJson(response);
  }

  Future<DataList<Invoice>> list([ListInvoicesRequest? request]) async {
    final map = await get(
      'invoices',
      queryParameters: request?.toJson(),
    );
    return DataList<Invoice>.fromJson(
      map,
      (value) => Invoice.fromJson(value as Map<String, dynamic>),
    );
  }

  Future<Invoice> markAsVoid(String invoiceId) async {
    final response = await post(
      'invoices/$invoiceId/void',
    );

    return Invoice.fromJson(
      response,
    );
  }

  Future<Invoice> finalize(String invoiceId) async {
    final response = await post(
      'invoices/$invoiceId/finalize',
    );

    return Invoice.fromJson(
      response,
    );
  }
}
