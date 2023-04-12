class PollsModel {
  String name, status, location, closingDate;

  PollsModel({
    this.name,
    this.status,
    this.location,
    this.closingDate,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map();

    map['pollName'] = this.name;
    map['status'] = this.status;
    map['location'] = this.location;
    map['closing'] = this.closingDate;

    return map;
  }
}
