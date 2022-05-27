
class Rent{
  String rentID;
  String carID;
  String outDate;
  String inDate;
  int duration;
  int prize;

  Rent({
  required this.rentID,
  required this.carID,
  required this.outDate,
  required this.inDate,
  required this.duration,
  required this.prize,
  });

  factory Rent.fromJson(Map<String, dynamic> json)
  {
    return Rent(
      rentID: json["rentID"] as String,
      carID: json["carID"] as String,
      outDate: json["outDate"] as String,
      inDate: json["inDate"] as String,
      duration: json["duration"] as int,
      prize: json["prize"] as int,

    );
  }


  Map<String, dynamic> toJson()
  {
    return{
      "rentID": rentID,
      "carID": carID,
      "outDate": outDate,
      "inDate":inDate,
      "duration":duration,
      "prize": prize,
    };
  }
}