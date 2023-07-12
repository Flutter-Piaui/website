import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/app/modules/photos/data/data_sources/photo_data_source.dart';
import 'package:flutter_piaui_website/app/modules/photos/data/repositories/api_photo_repository.dart';
import 'package:flutter_piaui_website/app/modules/photos/data/stores/photo_store.dart';
import 'package:flutter_piaui_website/app/modules/photos/domain/usecases/get_photos_usecases.dart';

import 'ui/page/photos_page.dart';

class WidgetPhotosModule extends WidgetModule {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => JsonPhotoDataSource()),
        Bind.factory((i) => ApiPhotoRepository(i())),
        Bind.factory((i) => GetPhotos(i())),
        Bind.lazySingleton((i) => PhotosStore(i()))
      ];

  @override
  List<ModularRoute> get routes => [];

  @override
  Widget get view => PhotosPage();
}
