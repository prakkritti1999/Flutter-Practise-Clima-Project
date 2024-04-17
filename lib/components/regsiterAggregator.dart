import 'package:flutter/material.dart';

class RegisterAggregator extends StatefulWidget {
  const RegisterAggregator({super.key});

  @override
  State<RegisterAggregator> createState() => _RegisterAggregatorState();
}

class _RegisterAggregatorState extends State<RegisterAggregator> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
