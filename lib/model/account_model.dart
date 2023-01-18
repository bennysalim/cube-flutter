import 'dart:ui';

class AccountModel {
  String nama, email, userID, username;
  Image imageProfile;
  AccountModel(
      {required this.nama,
      required this.email,
      required this.userID,
      required this.username,
      required this.imageProfile});
  Map<String, dynamic> toJSONRegister() => {
        "nama": nama,
        "email": email,
        "userID": userID,
      };
  Map<dynamic, dynamic> toJSONBiodata() =>
      {"username": username, "imageProile": imageProfile};
  factory AccountModel.fromJSON(Map<dynamic, dynamic> json) => AccountModel(
      nama: json['nama'],
      email: json['email'],
      userID: json['userID'],
      username: json['username'],
      imageProfile: json['imageProfile']);
}
