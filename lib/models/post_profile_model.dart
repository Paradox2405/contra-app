class PostProfile {
  int number;
  String type;
  String nic;
  String name;
  String skills;
  String exp;
  String rate;

  PostProfile(
      {this.nic,this.type,this.name, this.number, this.skills, this.exp, this.rate});

  PostProfile.fromJson(Map<String, dynamic> json) {
    nic = json['nic'];
    type=json['type'];
    name = json['name'];
    number = json['number'];
    skills = json['skills'];
    exp = json['exp'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nic'] = this.nic;
    data['type'] = this.type;
    data['name'] = this.name;
    data['number'] = this.number;
    data['skills'] = this.skills;
    data['exp'] = this.exp;
    data['rate'] = this.rate;
    return data;
  }
}
