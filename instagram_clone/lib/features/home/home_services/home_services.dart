import 'package:graphql/client.dart';
import 'package:instagram_clone/data/graphql/graphql.dart';

class HomeServices {
  final GraphQLClient _qlClient;

  HomeServices(this._qlClient);
  Future<List<Query$GetFeeds$getFeeds>> fetchFeedPost() async {
    final posts = await _qlClient.query$GetFeeds(
        Options$Query$GetFeeds(fetchPolicy: FetchPolicy.noCache));

    if (posts.parsedData != null) {
      print(posts.source);
      final p = posts.parsedData!.getFeeds!.map((e) => e!).toList();
      // p.shuffle();
      return p;
    }
    return [];
  }

  likePost(String postId) async {
    final result = await _qlClient
        .mutate$LikePost(Options$Mutation$LikePost(
            variables: Variables$Mutation$LikePost(postId: postId)))
        .then((value) {
      return value.parsedData?.likePost;
    });
  }
}
