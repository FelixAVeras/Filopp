import 'dart:convert';

// Customer customerFromJson(String str) => Customer.fromJson(json.decode(str));

// String customerToJson(Customer data) => json.encode(data.toJson());

class Customer {
  Customer({
    this.email,
    this.firstName,
    this.lastName,
    this.password,
  });

  String email;
  String firstName;
  String lastName;
  String password;

  // factory Customer.fromJson(Map<String, dynamic> json) => Customer(
  //     email: json["email"],
  //     firstName: json["firstName"],
  //     lastName: json["lastName"],
  //     password: json["password"],
  // );

  // Map<String, dynamic> toJson() => {
  //     "email": email,
  //     "firstName": firstName,
  //     "lastName": lastName,
  //     "password": password,
  // };

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};

    map.addAll({
      "email": email,
      "firstName": firstName,
      "lastName": lastName,
      "password": password,
    });

    return map;
  }
}
