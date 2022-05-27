import 'package:flutter/material.dart';
import 'package:car_rental/API/RentAPI.dart';




class RentListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return RentListPageState();
  }

}

class RentListPageState extends State<RentListPage> {
  @override
  Widget build(BuildContext context) {
    var rentAPI = new RentAPI();
    return Padding(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder(
          future: rentAPI.getRents(),
          builder: (context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(

                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(snapshot.data![index].rentID),
                      subtitle: Text(snapshot.data![index].carID),
                    ),
                  );
                },
              );
            }
            else {
              return const CircularProgressIndicator();
            }
          }
      ),
    );
  }
}