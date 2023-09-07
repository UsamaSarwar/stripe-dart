import 'package:stripe/src/client.dart';
import 'package:stripe/src/resources/_resource.dart';

import '../../messages.dart';

class AccountLinksResource extends Resource<AccountLink> {
  AccountLinksResource(Client client) : super(client);

  Future<AccountLink> create(CreateAccountLinkRequest request) async {
    final response = await post(
      'account_links',
      data: request.toJson(),
    );

    return AccountLink.fromJson(response);
  }
}
