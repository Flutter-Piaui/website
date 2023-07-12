import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_piaui_website/app/modules/photos/domain/entities/photo_entity.dart';

abstract class PhotoDataSource {
  Future<List<PhotoEntity>> getPhotos();
}

class FirebasePhotosDataSource extends PhotoDataSource {
  @override
  Future<List<PhotoEntity>> getPhotos() {
    // TODO: implement getPhotos
    throw UnimplementedError();
  }
}

class JsonPhotoDataSource extends PhotoDataSource {
  Future<List<PhotoEntity>> getPhotos() async {
    final String response =
        await rootBundle.loadString('data/photos_flutter_piaui.json');
    final data = await jsonDecode(response);
    List<PhotoEntity> photos = [];
    for (var item in data) {
      photos.add(PhotoEntity.fromMap(item));
    }
    return photos;
  }
}
