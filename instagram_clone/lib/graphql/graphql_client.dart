import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql/client.dart';
import 'package:instagram_clone/core/env.dart';

Future<GraphQLClient> getGraphQlClient(
    EnvironmentConfig env, FlutterSecureStorage secureStorage) async {
  final token = env.env == ENV.production
      ? await secureStorage.read(key: 'token')
      : await secureStorage.read(key: 'token-dev');

  return GraphQLClient(
    link: HttpLink(env.apiUrl,
        defaultHeaders:
            token != null ? {"Authorization": "Bearer $token"} : {}),
    cache: GraphQLCache(store: InMemoryStore()),
  );
}
