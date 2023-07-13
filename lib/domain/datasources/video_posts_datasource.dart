import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  // Abstracta porque no quiero instanciarla, sino que quiero que la implementen
  // Los repositorios llaman al datasource
  
  // A este datasource no le importa de donde vengan los datos, solo los entrega

  // Principio de responsabilidad única,

  Future<List<VideoPost>> getFavoriteVideosByUser( String userID );
  Future<List<VideoPost>> getTrendingVideosByPage( int page );


}