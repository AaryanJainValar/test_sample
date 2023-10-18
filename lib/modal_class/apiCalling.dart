/// id : 1
/// firstName : "Terry"
/// lastName : "Medhurst"
/// maidenName : "Smitham"
/// age : 50
/// gender : "male"
/// email : "atuny0@sohu.com"
/// phone : "+63 791 675 8914"
/// username : "atuny0"
/// password : "9uQFF1Lh"
/// birthDate : "2000-12-25"
/// image : "https://robohash.org/hicveldicta.png"
/// bloodGroup : "A−"
/// height : 189
/// weight : 75.4
/// eyeColor : "Green"
/// hair : {"color":"Black","type":"Strands"}
/// domain : "slashdot.org"
/// ip : "117.29.86.254"
/// address : {"address":"1745 T Street Southeast","city":"Washington","coordinates":{"lat":38.867033,"lng":-76.979235},"postalCode":"20020","state":"DC"}
/// macAddress : "13:69:BA:56:A3:74"
/// university : "Capitol University"
/// bank : {"cardExpire":"06/22","cardNumber":"50380955204220685","cardType":"maestro","currency":"Peso","iban":"NO17 0695 2754 967"}
/// company : {"address":{"address":"629 Debbie Drive","city":"Nashville","coordinates":{"lat":36.208114,"lng":-86.58621199999999},"postalCode":"37076","state":"TN"},"department":"Marketing","name":"Blanda-O'Keefe","title":"Help Desk Operator"}
/// ein : "20-9487066"
/// ssn : "661-64-2976"
/// userAgent : "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/12.0.702.0 Safari/534.24"

class ApiCalling {
  ApiCalling({
      int? id,
      String? firstName, 
      String? lastName, 
      String? maidenName, 
      int? age,
      String? gender, 
      String? email, 
      String? phone, 
      String? username, 
      String? password, 
      String? birthDate, 
      String? image, 
      String? bloodGroup, 
      int? height,
      num? weight,
      String? eyeColor, 
      Hair? hair, 
      String? domain, 
      String? ip, 
      UserAddress? address,
      String? macAddress, 
      String? university, 
      Bank? bank, 
      Company? company, 
      String? ein, 
      String? ssn, 
      String? userAgent,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _maidenName = maidenName;
    _age = age;
    _gender = gender;
    _email = email;
    _phone = phone;
    _username = username;
    _password = password;
    _birthDate = birthDate;
    _image = image;
    _bloodGroup = bloodGroup;
    _height = height;
    _weight = weight;
    _eyeColor = eyeColor;
    _hair = hair;
    _domain = domain;
    _ip = ip;
    _address = address;
    _macAddress = macAddress;
    _university = university;
    _bank = bank;
    _company = company;
    _ein = ein;
    _ssn = ssn;
    _userAgent = userAgent;
}

  ApiCalling.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _maidenName = json['maidenName'];
    _age = json['age'];
    _gender = json['gender'];
    _email = json['email'];
    _phone = json['phone'];
    _username = json['username'];
    _password = json['password'];
    _birthDate = json['birthDate'];
    _image = json['image'];
    _bloodGroup = json['bloodGroup'];
    _height = json['height'];
    _weight = json['weight'];
    _eyeColor = json['eyeColor'];
    _hair = json['hair'] != null ? Hair.fromJson(json['hair']) : null;
    _domain = json['domain'];
    _ip = json['ip'];
    _address = json['address'] != null ? UserAddress.fromJson(json['address']) : null;
    _macAddress = json['macAddress'];
    _university = json['university'];
    _bank = json['bank'] != null ? Bank.fromJson(json['bank']) : null;
    _company = json['company'] != null ? Company.fromJson(json['company']) : null;
    _ein = json['ein'];
    _ssn = json['ssn'];
    _userAgent = json['userAgent'];
  }
  int? _id;
  String? _firstName;
  String? _lastName;
  String? _maidenName;
  int? _age;
  String? _gender;
  String? _email;
  String? _phone;
  String? _username;
  String? _password;
  String? _birthDate;
  String? _image;
  String? _bloodGroup;
  int? _height;
  num? _weight;
  String? _eyeColor;
  Hair? _hair;
  String? _domain;
  String? _ip;
  UserAddress? _address;
  String? _macAddress;
  String? _university;
  Bank? _bank;
  Company? _company;
  String? _ein;
  String? _ssn;
  String? _userAgent;
ApiCalling copyWith({  int? id,
  String? firstName,
  String? lastName,
  String? maidenName,
  int? age,
  String? gender,
  String? email,
  String? phone,
  String? username,
  String? password,
  String? birthDate,
  String? image,
  String? bloodGroup,
  int? height,
  num? weight,
  String? eyeColor,
  Hair? hair,
  String? domain,
  String? ip,
  UserAddress? address,
  String? macAddress,
  String? university,
  Bank? bank,
  Company? company,
  String? ein,
  String? ssn,
  String? userAgent,
}) => ApiCalling(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  maidenName: maidenName ?? _maidenName,
  age: age ?? _age,
  gender: gender ?? _gender,
  email: email ?? _email,
  phone: phone ?? _phone,
  username: username ?? _username,
  password: password ?? _password,
  birthDate: birthDate ?? _birthDate,
  image: image ?? _image,
  bloodGroup: bloodGroup ?? _bloodGroup,
  height: height ?? _height,
  weight: weight ?? _weight,
  eyeColor: eyeColor ?? _eyeColor,
  hair: hair ?? _hair,
  domain: domain ?? _domain,
  ip: ip ?? _ip,
  address: address ?? _address,
  macAddress: macAddress ?? _macAddress,
  university: university ?? _university,
  bank: bank ?? _bank,
  company: company ?? _company,
  ein: ein ?? _ein,
  ssn: ssn ?? _ssn,
  userAgent: userAgent ?? _userAgent,
);
  int? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get maidenName => _maidenName;
  int? get age => _age;
  String? get gender => _gender;
  String? get email => _email;
  String? get phone => _phone;
  String? get username => _username;
  String? get password => _password;
  String? get birthDate => _birthDate;
  String? get image => _image;
  String? get bloodGroup => _bloodGroup;
  int? get height => _height;
  num? get weight => _weight;
  String? get eyeColor => _eyeColor;
  Hair? get hair => _hair;
  String? get domain => _domain;
  String? get ip => _ip;
  UserAddress? get address => _address;
  String? get macAddress => _macAddress;
  String? get university => _university;
  Bank? get bank => _bank;
  Company? get company => _company;
  String? get ein => _ein;
  String? get ssn => _ssn;
  String? get userAgent => _userAgent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['maidenName'] = _maidenName;
    map['age'] = _age;
    map['gender'] = _gender;
    map['email'] = _email;
    map['phone'] = _phone;
    map['username'] = _username;
    map['password'] = _password;
    map['birthDate'] = _birthDate;
    map['image'] = _image;
    map['bloodGroup'] = _bloodGroup;
    map['height'] = _height;
    map['weight'] = _weight;
    map['eyeColor'] = _eyeColor;
    if (_hair != null) {
      map['hair'] = _hair?.toJson();
    }
    map['domain'] = _domain;
    map['ip'] = _ip;
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    map['macAddress'] = _macAddress;
    map['university'] = _university;
    if (_bank != null) {
      map['bank'] = _bank?.toJson();
    }
    if (_company != null) {
      map['company'] = _company?.toJson();
    }
    map['ein'] = _ein;
    map['ssn'] = _ssn;
    map['userAgent'] = _userAgent;
    return map;
  }

}

/// address : {"address":"629 Debbie Drive","city":"Nashville","coordinates":{"lat":36.208114,"lng":-86.58621199999999},"postalCode":"37076","state":"TN"}
/// department : "Marketing"
/// name : "Blanda-O'Keefe"
/// title : "Help Desk Operator"

class Company {
  Company({
      UserAddress? address,
      String? department, 
      String? name, 
      String? title,}){
    _address = address;
    _department = department;
    _name = name;
    _title = title;
}

  Company.fromJson(dynamic json) {
    _address = json['address'] != null ? UserAddress.fromJson(json['address']) : null;
    _department = json['department'];
    _name = json['name'];
    _title = json['title'];
  }
  UserAddress? _address;
  String? _department;
  String? _name;
  String? _title;
Company copyWith({  UserAddress? address,
  String? department,
  String? name,
  String? title,
}) => Company(  address: address ?? _address,
  department: department ?? _department,
  name: name ?? _name,
  title: title ?? _title,
);
  UserAddress? get address => _address;
  String? get department => _department;
  String? get name => _name;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    map['department'] = _department;
    map['name'] = _name;
    map['title'] = _title;
    return map;
  }

}

/// address : "629 Debbie Drive"
/// city : "Nashville"
/// coordinates : {"lat":36.208114,"lng":-86.58621199999999}
/// postalCode : "37076"
/// state : "TN"

class Address {
  UserAddress({
      String? address, 
      String? city, 
      UserCoordinates? coordinates,
      String? postalCode, 
      String? state,}){
    _address = address;
    _city = city;
    _coordinates = coordinates;
    _postalCode = postalCode;
    _state = state;
}

  Address.fromJson(dynamic json) {
    _address = json['address'];
    _city = json['city'];
    _coordinates = json['coordinates'] != null ? UserCoordinates.fromJson(json['coordinates']) : null;
    _postalCode = json['postalCode'];
    _state = json['state'];
  }
  String? _address;
  String? _city;
  UserCoordinates? _coordinates;
  String? _postalCode;
  String? _state;
  Address copyWith({  String? address,
  String? city,
  UserCoordinates? coordinates,
  String? postalCode,
  String? state,
}) => UserAddress(  address: address ?? _address,
  city: city ?? _city,
  coordinates: coordinates ?? _coordinates,
  postalCode: postalCode ?? _postalCode,
  state: state ?? _state,
);
  String? get address => _address;
  String? get city => _city;
  UserCoordinates? get coordinates => _coordinates;
  String? get postalCode => _postalCode;
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = _address;
    map['city'] = _city;
    if (_coordinates != null) {
      map['coordinates'] = _coordinates?.toJson();
    }
    map['postalCode'] = _postalCode;
    map['state'] = _state;
    return map;
  }

}

/// lat : 36.208114
/// lng : -86.58621199999999

class Coordinates {
  UserCoordinates({
      num? lat,
      num? lng,}){
    _lat = lat;
    _lng = lng;
}

  Coordinates.fromJson(dynamic json) {
    _lat = json['lat'];
    _lng = json['lng'];
  }
  num? _lat;
  num? _lng;
  Coordinates copyWith({  num? lat,
  num? lng,
}) => UserCoordinates(  lat: lat ?? _lat,
  lng: lng ?? _lng,
);
  num? get lat => _lat;
  num? get lng => _lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lng'] = _lng;
    return map;
  }

}

/// cardExpire : "06/22"
/// cardNumber : "50380955204220685"
/// cardType : "maestro"
/// currency : "Peso"
/// iban : "NO17 0695 2754 967"

class Bank {
  Bank({
      String? cardExpire, 
      String? cardNumber, 
      String? cardType, 
      String? currency, 
      String? iban,}){
    _cardExpire = cardExpire;
    _cardNumber = cardNumber;
    _cardType = cardType;
    _currency = currency;
    _iban = iban;
}

  Bank.fromJson(dynamic json) {
    _cardExpire = json['cardExpire'];
    _cardNumber = json['cardNumber'];
    _cardType = json['cardType'];
    _currency = json['currency'];
    _iban = json['iban'];
  }
  String? _cardExpire;
  String? _cardNumber;
  String? _cardType;
  String? _currency;
  String? _iban;
Bank copyWith({  String? cardExpire,
  String? cardNumber,
  String? cardType,
  String? currency,
  String? iban,
}) => Bank(  cardExpire: cardExpire ?? _cardExpire,
  cardNumber: cardNumber ?? _cardNumber,
  cardType: cardType ?? _cardType,
  currency: currency ?? _currency,
  iban: iban ?? _iban,
);
  String? get cardExpire => _cardExpire;
  String? get cardNumber => _cardNumber;
  String? get cardType => _cardType;
  String? get currency => _currency;
  String? get iban => _iban;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cardExpire'] = _cardExpire;
    map['cardNumber'] = _cardNumber;
    map['cardType'] = _cardType;
    map['currency'] = _currency;
    map['iban'] = _iban;
    return map;
  }

}

/// address : "1745 T Street Southeast"
/// city : "Washington"
/// coordinates : {"lat":38.867033,"lng":-76.979235}
/// postalCode : "20020"
/// state : "DC"

class UserAddress {
  Address({
      String? address, 
      String? city, 
      UserCoordinates? coordinates,
      String? postalCode, 
      String? state,}){
    _address = address;
    _city = city;
    _coordinates = coordinates;
    _postalCode = postalCode;
    _state = state;
}

  UserAddress.fromJson(dynamic json) {
    _address = json['address'];
    _city = json['city'];
    _coordinates = json['coordinates'] != null ? UserCoordinates.fromJson(json['coordinates']) : null;
    _postalCode = json['postalCode'];
    _state = json['state'];
  }
  String? _address;
  String? _city;
  UserCoordinates? _coordinates;
  String? _postalCode;
  String? _state;
UserAddress copyWith({  String? address,
  String? city,
  UserCoordinates? coordinates,
  String? postalCode,
  String? state,
}) => Address(  address: address ?? _address,
  city: city ?? _city,
  coordinates: coordinates ?? _coordinates,
  postalCode: postalCode ?? _postalCode,
  state: state ?? _state,
);
  String? get address => _address;
  String? get city => _city;
  UserCoordinates? get coordinates => _coordinates;
  String? get postalCode => _postalCode;
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = _address;
    map['city'] = _city;
    if (_coordinates != null) {
      map['coordinates'] = _coordinates?.toJson();
    }
    map['postalCode'] = _postalCode;
    map['state'] = _state;
    return map;
  }

}

/// lat : 38.867033
/// lng : -76.979235

class UserCoordinates {
  Coordinates({
      num? lat,
      num? lng,}){
    _lat = lat;
    _lng = lng;
}

  UserCoordinates.fromJson(dynamic json) {
    _lat = json['lat'];
    _lng = json['lng'];
  }
  num? _lat;
  num? _lng;
UserCoordinates copyWith({  num? lat,
  num? lng,
}) => Coordinates(  lat: lat ?? _lat,
  lng: lng ?? _lng,
);
  num? get lat => _lat;
  num? get lng => _lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lng'] = _lng;
    return map;
  }

}

/// color : "Black"
/// type : "Strands"

class Hair {
  Hair({
      String? color, 
      String? type,}){
    _color = color;
    _type = type;
}

  Hair.fromJson(dynamic json) {
    _color = json['color'];
    _type = json['type'];
  }
  String? _color;
  String? _type;
Hair copyWith({  String? color,
  String? type,
}) => Hair(  color: color ?? _color,
  type: type ?? _type,
);
  String? get color => _color;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['color'] = _color;
    map['type'] = _type;
    return map;
  }

}