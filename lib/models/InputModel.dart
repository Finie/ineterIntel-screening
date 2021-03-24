class InputModel {
  String email;
  String name;
  String phone;

  InputModel.fromJSON(Map<String, dynamic> parsedJson) {
    this.email = parsedJson['email'];
    this.name = parsedJson['name'];
    this.phone = parsedJson['phone'];
  }
}