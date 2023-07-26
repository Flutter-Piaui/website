import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PhotoEntity {
  String photoUrl;
  PhotoEntity({
    required this.photoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photoUrl': photoUrl,
    };
  }

  factory PhotoEntity.fromMap(Map<String, dynamic> map) {
    return PhotoEntity(
      photoUrl: map['photoUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PhotoEntity.fromJson(String source) =>
      PhotoEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
