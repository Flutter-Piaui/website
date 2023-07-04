// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PhotosStore on PhotosStoreBase, Store {
  late final _$listphotosAtom =
      Atom(name: 'PhotosStoreBase.listphotos', context: context);

  @override
  List<PhotoEntity> get listphotos {
    _$listphotosAtom.reportRead();
    return super.listphotos;
  }

  @override
  set listphotos(List<PhotoEntity> value) {
    _$listphotosAtom.reportWrite(value, super.listphotos, () {
      super.listphotos = value;
    });
  }

  late final _$fetchphotossAsyncAction =
      AsyncAction('PhotosStoreBase.fetchphotoss', context: context);

  @override
  Future fetchphotoss() {
    return _$fetchphotossAsyncAction.run(() => super.fetchphotoss());
  }

  @override
  String toString() {
    return '''
listphotos: ${listphotos}
    ''';
  }
}
