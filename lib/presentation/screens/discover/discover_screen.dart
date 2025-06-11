import 'package:basic_flutter/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/discover_provider.dart';

class DiscoverScreen extends ConsumerWidget {
  static const String nameclass = 'discover_screen';

  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final discoverStateProvider = ref.watch(discoverProvider);

    return Scaffold(

      body: discoverStateProvider.initialLoading
      ? const Center(child: CircularProgressIndicator(strokeWidth: 2,),)
      : VideoScrollableView(videos: discoverStateProvider.videos),
    );
  }
}