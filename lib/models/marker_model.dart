class MarkersModel {
  int id;
  double rating;
  String name;
  String description;
  String latitude;
  String longitude;
  String image;
  String location;
  String pastP;
  String prices;
  String tender;
  String quality;
  String technology;
  String healthS;
  String engineers;
  String workers;


  MarkersModel(
      this.id,
      this.rating,
      this.name,
      this.description,
      this.latitude,
      this.longitude,
      this.image,
      this.location,
      this.pastP,
      this.prices,
      this.tender,
      this.quality,
      this.technology,
      this.healthS,
      this.engineers,
      this.workers);

// you can use this model with your backend as well :

/*  factory MarkersModel.fromJson(Map<String, dynamic> json) => MarkersModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      image: json["image"]);
*/
}
