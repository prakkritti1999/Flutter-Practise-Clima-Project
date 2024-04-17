import 'package:flutter/material.dart';
import 'package:splash_screen/constants.dart';

class AggregatorsOptions extends StatefulWidget {
  const AggregatorsOptions({super.key});

  @override
  State<AggregatorsOptions> createState() => _AggregatorsOptionsState();
}

class _AggregatorsOptionsState extends State<AggregatorsOptions> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              width: 300,
              height: 50,
              color: Colors.lightBlueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(aggOpt),
                  InkWell(
                    onTap: (){

                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              )
          ),
          if(isOpen)
            ListView(
              primary: true,
              shrinkWrap: true,
              children: aggOptions.map((e) => Container(
                child: Text(e),
              )).toList(),
            )
        ],
      );
  }
}
