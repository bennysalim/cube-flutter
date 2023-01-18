import 'package:cube/model/account_model.dart';
import 'package:flutter/cupertino.dart';

class ImagePostModel extends AccountModel {
  String caption;
  Image imagePost;
  ImagePostModel({
    required super.userID,
    required super.username,
    required super.nama,
    required super.email,
    required super.imageProfile,
    required this.caption,
    required this.imagePost,
  });

  Map<dynamic, dynamic> toJSONImageUpload() => {
        caption: "caption",
        imagePost: "imagePost",
      };

  factory ImagePostModel.fromJSON(Map<dynamic, dynamic> json) => ImagePostModel(
      nama: json['nama'],
      email: json['email'],
      userID: json['userID'],
      username: json['username'],
      imageProfile: json['imageProfile'],
      caption: json['caption'],
      imagePost: json['imagePost']);
}
