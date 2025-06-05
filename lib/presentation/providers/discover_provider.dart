import 'package:basic_flutter/domain/entities/video_post.dart';
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

// Notifier:
class DiscoverNotifier extends StateNotifier<DiscoverState> {
  DiscoverNotifier(): super(DiscoverState());

  Future<void> loadNextpage() async {
    // TODO: Realizar la implementacion de cargar videos

  }

}

final discoverProvider = StateNotifierProvider<DiscoverNotifier, DiscoverState>((ref) => DiscoverNotifier(),);





