import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _currentColor = Colors.blue;
  final _controller = CircleColorPickerController(
    initialColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.pinkAccent,
          title: const Text('Circle color picker sample'),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 48),
              Center(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: CircleColorPicker(
                      thumbSize: 25,
                      //size: Size(400,400),
                      controller: _controller,
                      onChanged: (color) {
                        setState(() => _currentColor = color);
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () => _controller.color = Colors.blue,
                      child: Text('BLUE', style: TextStyle(color: Colors.blue)),
                    ),
                    TextButton(
                      onPressed: () => _controller.color = Colors.green,
                      child: Text('GREEN', style: TextStyle(color: Colors.green)),
                    ),
                    TextButton(
                      onPressed: () => _controller.color = Colors.red,
                      child: Text('RED', style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
