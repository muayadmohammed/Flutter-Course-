import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

enum SingingCharacter { lafayette, jefferson }

class ss2 extends StatefulWidget {
  const ss2({super.key});

  @override
  State<ss2> createState() => _ss2State();
}

class _ss2State extends State<ss2> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  double _currentSliderValue = 20;
  bool y = false;
  bool y2 = false;

  TextStyle _textStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w100,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: y,
            splashRadius: 2,
            checkColor: Colors.black,
            activeColor: Colors.red,
            onChanged: (v) {
              y = v!;
            },
          ),
          Checkbox(
            value: y2,
            splashRadius: 2,
            checkColor: Colors.black,
            activeColor: Colors.red,
            onChanged: (ee) {
              y2 = ee!;
            },
          ),
          TextButton(
            onPressed: () {
              setState(() {
                y = !y;
                y2 = !y2;
                print(y);
              });
            },
            child: Text("ch"),
          ),
          ListTile(
            title: Text(
              'Lafayette',
              style: _textStyle,
            ),
            leading: Radio<SingingCharacter>(
              mouseCursor: MouseCursor.defer,
              activeColor: Colors.yellow,
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Thomas Jefferson',
              style: _textStyle,
            ),
            leading: Radio<SingingCharacter>(
              activeColor: Colors.yellow,
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          Slider(
            activeColor: Colors.amber,
            thumbColor: Colors.red,
            inactiveColor: Colors.black26,
            max: 100,
            min: 0,
            divisions: 15,
            label: _currentSliderValue.round().toString(),
            value: _currentSliderValue,
            onChanged: (value) {
              setState(() {
                _currentSliderValue = value;
                print(value.round());
              });
            },
          ),
          MaterialButton(
            onPressed: () {
              print("object");
            },
            elevation: 15,
            color: Colors.red,
            child: Text(
              "Next\nPage",
              style: _textStyle,
            ),
          ),
          TextButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('AlertDialog Title'),
                content: const Text('AlertDialog description'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: const Text('Show Dialog'),
          ),
          SimpleDialog(
            alignment: Alignment.center,
            title:const Center(child:  Text('Select')),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  // Navigator.pop(context, 'OK');
                  print("object1");
                },
                child: const Center(
                  child:  Text(
                    'OK',
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  // Navigator.pop(context, 'OK');
                  print("object2");
                },
                child:const Center(child:  Text('Cancel')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
