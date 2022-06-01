class UserModel {
  final String uID;
  final String firstName;
  final String surName;
  // final String? userImage;
  final String dOB;
  final String country;
  final String region;
  final String city;
  final String email;
  final String password;
  final String cat;
  final bool dark;

  UserModel(
      {required this.uID,
      required this.firstName,
      required this.surName,
      // this.userImage,
      required this.dOB,
      required this.country,
      required this.region,
      required this.city,
      required this.email,
      required this.password,
      this.cat = "C",
      this.dark = true});
}
