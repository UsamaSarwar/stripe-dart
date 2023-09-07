import 'package:stripe/src/resources/_resource.dart';

import '../../messages.dart';
import '../client.dart';

class AccountsResource extends Resource<Account> {
  AccountsResource(Client client) : super(client);

  Future<Account> create(CreateAccountRequest request) async {
    final response = await post(
      'accounts',
      data: request.toJson(),
    );

    return Account.fromJson(response);
  }

  Future<AccountLoginLink> createLoginLink(String id) async {
    final response = await post(
      'accounts/$id/login_links',
    );

    return AccountLoginLink.fromJson(response);
  }
}
