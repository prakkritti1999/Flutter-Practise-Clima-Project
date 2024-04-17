import 'package:flutter/material.dart';
import 'package:splash_screen/components/ConsignementBooking.dart';
import 'package:splash_screen/components/aggregatorsOptions.dart';
import 'package:splash_screen/components/drawer.dart';
import 'package:splash_screen/components/regsiterAggregator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  //int selectedRadio = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("RAIL RAPID CARGO")
        ),
        drawer: DrawerScreen(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          //color: Colors.lightGreen,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/cargo.jpg"),
              fit: BoxFit.cover
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Option 1: User can book a consignment
                ConsignementBooking(),

                SizedBox(
                  height: 50,
                ),

                // Option 2: user can connect to an aggregator

                AggregatorsOptions(),

                SizedBox(
                  height: 50,
                ),
                // Option 3: user can user as an aggregator
              RegisterAggregator()

              ],
            ),
          ),
        )
    );
  }
}





















                /*Padding(padding: EdgeInsets.all(20)),
              Container(
                padding: EdgeInsets.all(10),
                width: 300,
                height: 50,
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Connect to an Aggregator"),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                )
              ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                    padding: EdgeInsets.all(10),
                    width: 300,
                    height: 50,
                    color: Colors.lightBlueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Register as an Aggregator"),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.add,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    )
                ),*/







































      /*Container(
            child: Column(
                children: [
                  Container(
                    color: Colors.lightBlueAccent,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Book Your Consignment",
                                  style: TextStyle(fontSize: 18),)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Connect to an Aggregator", style: TextStyle(fontSize: 18)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Register as an Aggregator", style: TextStyle(fontSize: 18)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: radioOptions.map((String option) {
                        return RadioListTile(
                          title: Text(option),
                          value: option,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value as int;
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                      child: Text("PROCEED")
                  )
                ]
            )
        )*/
