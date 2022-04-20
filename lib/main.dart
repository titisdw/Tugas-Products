import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (contex, index) {
          return Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
                leading: Image.network("https://s3.bukalapak.com/img/8386436286/w-1000/Sepatu_Gunung_Rei_Silverback___Sepatu_Hiking_Waterproof.jpg"),
                title: Text(
                  "Sepatu Gunung Rei Silverback - Sepatu Hiking Waterproof",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  "Stock: 33",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
          );
        },
      ),
    );
  }
}
