import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  
  // Este archivo VideoPostsRepository necesita de un datasource 
  // (no la implementación)
  final VideoPostDataSource videosDatasource;

  // De esta manera hacemos que cualquier videoPostDataSources sea permitido
  // (locales, web por JSON, web por GraphQL, etc)
  VideoPostsRepositoryImpl({
    required this.videosDatasource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID ) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    // Aquí es donde se llama al datasource
    return videosDatasource.getTrendingVideosByPage(page);
  }

}