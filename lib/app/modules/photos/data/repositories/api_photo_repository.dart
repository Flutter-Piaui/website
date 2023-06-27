// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_piaui_website/app/modules/photos/domain/entities/photo_entity.dart';

import '../../domain/repositories/photo_repository.dart';
import '../data_sources/photo_data_source.dart';

class ApiPhotoRepository extends PhotoRepository {
  final PhotoDataSource photoDataSource;
  ApiPhotoRepository(
    this.photoDataSource,
  );

  Future<List<PhotoEntity>> getPhotos() {
    return photoDataSource.getPhotos();
  }
}
