

class Car{

  String carID;
  String brand;
  String model;
  int productionYear;
  int capacity;
  int horsePower;
  String color;
  int doors;
  String type;
  int prize;
  bool availability;
  int odometer;
  String uri;

  Car({
    required this.carID,
    required this.brand,
    required this.model,
    required this.productionYear,
    required this.prize,
    required this.capacity,
    required this.horsePower,
    required this.color,
    required this.doors,
    required this.type,
    required this.odometer,
    required this.availability,
    required this.uri
 });

factory Car.fromJson(Map<String, dynamic> json)
{
  return Car(
    carID: json["carID"] as String,
    brand: json["brand"] as String,
    model: json["model"] as String,
    productionYear: json["productionYear"] as int,
    capacity: json["capacity"] as int,
    horsePower: json["horsePower"] as int,
    doors: json["doors"] as int,
    type: json["type"] as String,
    prize: json["prize"] as int,
    availability: json["availability"] as bool,
    odometer: json["odometer"] as int,
    uri: json["uri"] as String,
    color: json["color"] as String,
  );
}


Map<String, dynamic> toJson()
{
  return{
    "carID": carID,
    "brand": brand,
    "model": model,
    "productionYear": productionYear,
    "capacity":capacity,
    "horsePower":horsePower,
    "color": color,
    "doors":doors,
    "type": type,
    "prize": prize,
    "availability":availability,
    "odometer": odometer,
    //"uri": uri,
  };
}
}