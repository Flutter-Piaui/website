// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EventEntity {
  final String photoUrl;
  final String title;
  final String linkUrl;
  final String date;

  EventEntity({
    this.photoUrl = 'empty_url',
    this.title = 'empty',
    this.linkUrl = 'empty',
    this.date = '9999',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photoUrl': photoUrl,
      'title': title,
      'linkUrl': linkUrl,
      'date': date,
    };
  }

  factory EventEntity.fromMap(Map<String, dynamic> map) {
    return EventEntity(
      photoUrl: map['photoUrl'] ?? '',
      title: map['title'] ?? '',
      linkUrl: map['linkUrl'] ?? '',
      date: map['date'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EventEntity.fromJson(String source) =>
      EventEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
