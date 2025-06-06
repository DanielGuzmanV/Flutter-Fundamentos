import 'package:basic_flutter/domain/entities/video_post.dart';
import 'package:basic_flutter/infrastructure/models/local_video_model.dart';
import 'package:basic_flutter/shared/data/local_video_post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Estado para discover:
class DiscoverState {
  final bool initialLoading;
  final List<VideoPost> videos;

  DiscoverState({
    this.initialLoading = true, 
    this.videos = const []
  });

  // Metodo copyWith
  DiscoverState copyWith({bool? initialLoading, List<VideoPost>? videos,}) {
    return DiscoverState(
      initialLoading: initialLoading ?? this.initialLoading,
      videos: videos ?? this.videos
    );
  }
}
// ================================================================

// Notifier:
class DiscoverNotifier extends StateNotifier<DiscoverState> {
  final List<Map<String, dynamic>> listVideoPost;


  DiscoverNotifier({
    required this.listVideoPost,
  }): super(DiscoverState()) {
    // Llamamos a la carga inicial al crear el notifier:
    loadNextpage();

  }

  Future<void> loadNextpage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = listVideoPost
      .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
      .toList();

    state = state.copyWith(
      videos: [...state.videos, ...newVideos],
      initialLoading: false,
    );
  }
}

final discoverProvider = StateNotifierProvider<DiscoverNotifier, DiscoverState>(
  (ref) => DiscoverNotifier(listVideoPost: videoPosts),
);
