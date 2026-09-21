import 'package:toktik_app/domain/datasource/video_posts_datasoruce.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/domain/repositories/video_poats_repositories.dart';

class VideosPostRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource videosDatasource;

  VideosPostRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoritesVideosByUser(String userID) {
    // TODO: implement getFavoritesVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
