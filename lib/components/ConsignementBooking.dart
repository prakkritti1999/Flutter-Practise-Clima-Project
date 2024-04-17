import 'package:flutter/material.dart';
import 'package:splash_screen/screens/LoginPage.dart';
import 'package:splash_screen/constants.dart';

class ConsignementBooking extends StatefulWidget {
  const ConsignementBooking({super.key});

  @override
  State<ConsignementBooking> createState() => _ConsignementBookingState();
}

class _ConsignementBookingState extends State<ConsignementBooking> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 300,
        child: Column(
          children: [
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(frOpt),
                    InkWell(
                      onTap: (){
                        isOpen = !isOpen;
                        setState(() {

                        });
                      },
                      child: Icon(isOpen ? Icons.minimize_outlined :
                      Icons.add,
                          color: Colors.greenAccent
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if(isOpen)
              ListView(
                primary: true,
                shrinkWrap: true,
                children: freightOptions.map((e) => Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent
                  ),
                  child: InkWell(
                      onTap: (){
                        frOpt = e;
                        isOpen = false;
                        setState(() {

                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(e),
                      )
                  ),
                )).toList(),
              ),
            Container(
              width: 300,
              color: Colors.greenAccent,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              },
                  child: Text("PROCEED", style: TextStyle(color: Colors.white),)
              ),
            )

          ],
        ),
      ),
    );
  }
}
