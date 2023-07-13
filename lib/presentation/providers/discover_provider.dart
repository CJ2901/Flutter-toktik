import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  // Principio de responsabilidad única, 
  // Este provider solo se encarga de manejar el estado de la pantalla DiscoverScreen

  final VideoPostRepository videosRepository; 
  // Este es el repositorio donde se llama al datasource
  // Ya va a saber qué origen de datos usar

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({ 
    required this.videosRepository
  });

  Future<void> loadNextPage() async { 

    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts.map(
    //   (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    // ).toList();

    final newVideos = await videosRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }

}