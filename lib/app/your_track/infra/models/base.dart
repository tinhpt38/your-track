import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

abstract class BaseModel {
  BaseModel();
  String collectionName() => '';
  Map<String, dynamic> toJson() => {};
  factory BaseModel.fromJson(Map<String, dynamic> json) {
    // TODO: implement BaseModel.fromJson
    throw UnimplementedError();
  }
  BaseModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options);
}


