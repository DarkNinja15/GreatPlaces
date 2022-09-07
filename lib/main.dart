import 'package:flutter/material.dart';
import 'package:places/providers/great_places.dart';
import 'package:places/screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ).copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                secondary: Colors.amber,
              ),
        ),
        home: const PlacesListScreen(),
      ),
    );
  }
}
