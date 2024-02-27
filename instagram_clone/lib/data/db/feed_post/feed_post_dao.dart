import 'package:drift/drift.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:graphql/client.dart';
import 'package:instagram_clone/data/db/database.dart';
import 'package:instagram_clone/data/graphql/graphql.dart';

import 'feed_post.dart';
part 'feed_post_dao.g.dart';

@DriftAccessor(tables: [FeedPosts])
class FeedPostsDao extends DatabaseAccessor<AppLocalDb>
    with _$FeedPostsDaoMixin {
  final GraphQLClient _qlClient;
  FeedPostsDao(super.attachedDatabase)
      : _qlClient = Modular.get<GraphQLClient>();

  Stream<List<FeedPost>> getFeedPost() {
    fetchAndCachePosts();

    return (select(feedPosts)
          ..orderBy([
            (u) =>
                OrderingTerm(expression: u.updatedAt, mode: OrderingMode.desc),
          ]))
        .watch();
  }

  Future<void> fetchAndCachePosts() async {
    await _fetchLatestFeedPost().then((value) {
      batch((batch) {
        batch.insertAll(feedPosts, value, mode: InsertMode.insertOrReplace);
      });
    });
  }

  Future<List<FeedPost>> _fetchLatestFeedPost() async {
    final posts = await _qlClient.query$GetFeeds(
        Options$Query$GetFeeds(fetchPolicy: FetchPolicy.noCache));

    if (posts.parsedData != null) {
      final p = posts.parsedData!.getFeeds!
          .map((e) => FeedPost(
                id: e!.id,
                commentCount: e.commentCount,
                likeCount: e.likeCount,
                mediaUrl: e.mediaUrl,
                updatedAt: DateTime.parse(e.updatedAt),
                userId: e.user.id,
                userName: e.user.userName,
                fullName: e.user.fullName,
                profileImageURL: e.user.profileImageURL,
                liked: e.liked,
                caption: e.caption,
              ))
          .toList();
      // p.shuffle();
      return p;
    }
    return [];
  }

  Future<void> addlike(String postId) async {
    print("like post");
    final data = await _qlClient
        .mutate$LikePost(Options$Mutation$LikePost(
            variables: Variables$Mutation$LikePost(postId: postId)))
        .then((value) => value.parsedData?.likePost);

    if (data != null) {
      // print(data);
      final post = FeedPostsCompanion.insert(
        id: data.id,
        commentCount: data.commentCount,
        likeCount: data.likeCount,
        mediaUrl: data.mediaUrl,
        updatedAt: DateTime.parse(data.updatedAt),
        userId: data.user.id,
        userName: data.user.userName,
        fullName: data.user.fullName,
        profileImageURL: Value(data.user.profileImageURL),
        liked: Value(data.liked),
        caption: Value(data.caption),
      );

      await (update(feedPosts)..where((tbl) => tbl.id.equals(postId)))
          .write(post);
    }
  }

  Future<void> unLikePost(String postId) async {
    print("unlike post");
    final data = await _qlClient
        .mutate$UnLikePost(Options$Mutation$UnLikePost(
            variables: Variables$Mutation$UnLikePost(postId: postId)))
        .then((value) => value.parsedData?.unLikePost);

    if (data != null) {
      final post = FeedPostsCompanion.insert(
        id: data.id,
        commentCount: data.commentCount,
        likeCount: data.likeCount,
        mediaUrl: data.mediaUrl,
        updatedAt: DateTime.parse(data.updatedAt),
        userId: data.user.id,
        userName: data.user.userName,
        fullName: data.user.fullName,
        profileImageURL: Value(data.user.profileImageURL),
        liked: Value(data.liked),
        caption: Value(data.caption),
      );

      await (update(feedPosts)..where((tbl) => tbl.id.equals(postId)))
          .write(post);
    }
  }
}
