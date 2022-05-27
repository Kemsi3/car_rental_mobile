import 'package:car_rental/API/CarAPI.dart';
import 'package:flutter/material.dart';

class CarListPage extends StatefulWidget{
  const CarListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    return CarListPageState();
  }
}

class CarListPageState extends State<CarListPage> {
  @override
  Widget build(BuildContext context) {
    var carAPI = new CarAPI();
    return Padding(
      padding: EdgeInsets.all(10),
      child: FutureBuilder(
          future: carAPI.getCars(),
          builder: (context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(

                    child: ListTile(
                      leading: Tab(
                        icon: Image.asset(snapshot.data![index].uri,
                         ),
                      ),
                      title: Text(snapshot.data![index].brand),
                      subtitle: Text(snapshot.data![index].model),

                    ),
                  );
                },
              );
            }
            else {
              return CircularProgressIndicator();
            }
          }
      ),
    );
  }
}