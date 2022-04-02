class SignUpBody {
  String firstname;
  String lastname;
  String role;
  String teamname;
  String teamsize;
  String industry;
  String housenumber;
  String streetaddress;
  String city;
  String zipcode;
  SignUpBody({
    required this.firstname,
    required this.lastname,
    required this.role,
    required this.teamname,
    required this.teamsize,
    required this.industry,
    required this.housenumber,
    required this.streetaddress,
    required this.city,
    required this.zipcode,
  });
  Map<String, String> toJson() {
    final Map<String, String> data = <String, String>{};
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['role'] = role;
    data['teamname'] = teamname;
    data['teamsize'] = teamsize;
    data['industry'] = industry;
    data['housenumber'] = housenumber;
    data['streetaddress'] = streetaddress;
    data['city'] = city;
    data['zipcode'] = zipcode;
    return data;
  }
}
