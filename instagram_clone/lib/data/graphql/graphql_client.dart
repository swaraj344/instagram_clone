import 'package:graphql/client.dart';
import 'package:instagram_clone/core/env.dart';

GraphQLClient getGraphQlClient(EnvironmentConfig env, String? token) {
  return GraphQLClient(
    link: HttpLink(env.apiUrl,
        defaultHeaders:
            token != null ? {"Authorization": "Bearer $token"} : {}),
    cache: GraphQLCache(
        // store: InMemoryStore(),
        ),
  );
}
