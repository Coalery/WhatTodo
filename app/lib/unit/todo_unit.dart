import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoUnit {
  final int _id;
  String _title;
  String _content;
  List<String> _tags;
  DateTime _uploadTime;

  TodoUnit({
    @required int id,
    @required String title,
    String content,
    List<String> tags,
    @required DateTime uploadTime
  })
  : assert(id != null),
    assert(title != null),
    assert(uploadTime != null),
    this._id = id,
    this._title = title,
    this._content = content ?? '',
    this._tags = tags ?? [],
    this._uploadTime = uploadTime;
  
  int get id => _id;
  String get title => _title;
  String get content => _content;
  List<String> get tags => _tags;
  int get tagsCount => _tags.length;
  DateTime get uploadTime => _uploadTime;

  factory TodoUnit.fromJsonString(String json) {
    return TodoUnit.fromJson(jsonDecode(json));
  }

  factory TodoUnit.fromJson(dynamic json) {
    int id = json['id'];

    String title = json['title'];
    String content = json['content'];

    List<String> tags = List.from(json['tags']);

    DateTime uploadTime = DateFormat('yyyyMMddHHmmss').parse(json['uploadTime']);

    return TodoUnit(id: id, title: title, content: content, tags: tags, uploadTime: uploadTime);
  }
}