import 'package:flutter/material.dart';
import '../models/Trip.dart';
import '../screens/details.dart';

class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  List<Widget> _tripLists = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addTrips();
  }

  void _addTrips() {
    List<Trip> _trips = [
      Trip(title: 'Trip 1', price: '200', night: '5', image: 'beach.png'),
      Trip(title: 'Trip 2', price: '500', night: '3', image: 'beach.png'),
      Trip(title: 'Trip 3', price: '400', night: '2', image: 'beach.png'),
      Trip(title: 'Trip 4', price: '250', night: '1', image: 'beach.png'),
      Trip(title: 'Trip 5', price: '350', night: '7', image: 'beach.png'),
    ];

    _trips.forEach((Trip trip) {
      _tripLists.add(_builtTile(trip));
    });
  }

  Widget _builtTile(Trip trip) {
    return ListTile(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Details(trip: trip)));
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${trip.night} nights',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blue[300]),
          ),
          Text(
            trip.title,
            style: TextStyle(fontSize: 20, color: Colors.grey[600]),
          )
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(tag:'image-tag-${trip.title}',
        child: Image.asset(
          'assets/images/${trip.image}',
          height: 50.0,
        ),
        ),
      ),
      trailing: Text('\$${trip.price}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _tripLists.length,
        itemBuilder: (context, index) {
          return _tripLists[index];
        });
  }
}
