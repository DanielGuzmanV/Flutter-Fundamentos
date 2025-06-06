// Mapeamos como luce el "local_video_post" de "shared/data"
// Y este sera un modelo de datos que representara un video que viene de 
// algun lugar local

import 'package:basic_flutter/domain/entities/video_post.dart';

class LocalVideoModel {

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name, 
    required this.videoUrl, 
    this.likes = 0, 
    this.views = 0
  });

  // Factory es un constructor especial, donde crearemos un objeto 
  // de tipo "LocalVideoModel" a partir de un mapa
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      name: json["name"] ?? 'No name', 
      videoUrl: json["videoUrl"], 
      likes: json["likes"] ?? 0, 
      views: json["views"] ?? 0
    );
  }

  // Convertimos el "LocalVideoModel" en un objeto de VideoPost
  VideoPost toVideoPostEntity() {
    return VideoPost(
      caption: name, 
      videoUrl: videoUrl,
      likes: likes,
      views: views
    );
  } 


}




