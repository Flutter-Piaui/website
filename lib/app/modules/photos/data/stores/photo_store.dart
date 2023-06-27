import 'package:flutter_piaui_website/app/modules/photos/domain/usecases/get_photos_usecases.dart';

import '../../domain/entities/photo_entity.dart';

import 'package:mobx/mobx.dart';
// Include generated file
part 'photos_store.g.dart';

class PhotosStore = PhotosStoreBase with _$PhotosStore;

abstract class PhotosStoreBase with Store {
  final GetPhotosUsecase photosUsecase;
  @observable
  List<PhotoEntity> listphotos = [];

  PhotosStoreBase(this.photosUsecase);

  @action
  fetchphotoss() async {
    listphotos = await photosUsecase();
  }
}
