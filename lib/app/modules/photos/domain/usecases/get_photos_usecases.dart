// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../entities/photo_entity.dart';
import '../repositories/photo_repository.dart';

abstract class GetPhotosUsecase {
  Future<List<PhotoEntity>> call();
}

class GetPhotos extends GetPhotosUsecase {
  final PhotoRepository photoRepository;
  GetPhotos(
     this.photoRepository,
  );
  @override
  Future<List<PhotoEntity>> call()  {
    return photoRepository.getPhotos();
  }
}
