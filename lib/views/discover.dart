import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;
  var height =(size.width / 4) * 3;
    return Scaffold(
      body: SizedBox(width: double.infinity, height: height,
        child: ListView(scrollDirection: Axis.horizontal, children: const [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1661466185104-1d8b5efcad1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
           AspectRatio(
            aspectRatio: 4 / 3,
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1661347332552-3eb71bb84d01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
           AspectRatio(
            aspectRatio: 4 / 3,
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1657299156638-ffa9dac845b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
