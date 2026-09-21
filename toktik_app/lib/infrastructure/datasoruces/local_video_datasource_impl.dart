import 'package:toktik_app/domain/datasource/video_posts_datasoruce.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/shared/data/local_video_post.dart';

import '../models/local_video_model.dart';

class LocalVideoDatasourceImpl implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoritesVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
