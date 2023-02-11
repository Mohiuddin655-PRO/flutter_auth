class DepartmentEntity {
  final List<User>? bN;
  final List<User>? eN;

  DepartmentEntity({
    this.bN,
    this.eN,
  });

  factory DepartmentEntity.from(Map<String, dynamic> json) {
    final bN = <User>[];
    final eN = <User>[];
    if (json['BN'] != null) {
      json['BN'].forEach((value) => bN.add(User.from(value)));
    }
    if (json['EN'] != null) {
      json['EN'].forEach((value) => eN.add(User.from(value)));
    }
    return DepartmentEntity(
      bN: bN,
      eN: eN,
    );
  }

  Map<String, dynamic> get map {
    final Map<String, dynamic> data = {};
    if (bN != null) {
      data['BN'] = bN!.map((value) => value.map).toList();
    }
    if (eN != null) {
      data['EN'] = eN!.map((value) => value.map).toList();
    }
    return data;
  }
}

class User {
  final String? designation;
  final String? hallName;
  final String? homeDistrict;
  final String? email;
  final String? mobile;
  final String? name;
  final String? url;
  final String? workplace;

  const User({
    this.designation,
    this.hallName,
    this.homeDistrict,
    this.email,
    this.mobile,
    this.name,
    this.url,
    this.workplace,
  });

  factory User.from(Map<String, dynamic> data) {
    final designation = data['designation'];
    final hallName = data['hall_name'];
    final homeDistrict = data['home_district'];
    final email = data['mail_address'];
    final phone = data['phone'];
    final name = data['name'];
    final url = data['url'];
    final workplace = data['workplace'];
    return User(
      designation: designation,
      hallName: hallName,
      homeDistrict: homeDistrict,
      email: email,
      mobile: phone,
      name: name,
      url: url,
      workplace: workplace,
    );
  }

  Map<String, dynamic> get map {
    final Map<String, dynamic> data = {};
    data['designation'] = designation;
    data['hall_name'] = hallName;
    data['home_district'] = homeDistrict;
    data['mail_address'] = email;
    data['mobile'] = mobile;
    data['name'] = name;
    data['url'] = url;
    data['workplace'] = workplace;
    return data;
  }
}
