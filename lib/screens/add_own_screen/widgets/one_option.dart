import 'package:flutter/material.dart';

class OneOption extends StatefulWidget {
  const OneOption(this.title);

  final String title;

  @override
  _OneOptionState createState() => _OneOptionState();
}

class _OneOptionState extends State<OneOption> {
  String _radioValue = 'One'; //Initial definition of radio button value
  String choice = 'One';
  final List<String> _list = ['One', 'Two'];

  void radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case 'one':
          choice = value;
          break;
        case 'two':
          choice = value;
          break;
        case 'three':
          choice = value;
          break;
        default:
          choice = null;
      }
      debugPrint(choice); //Debug the choice in console
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 22.0)),
        const SizedBox(
          height: 2,
        ),
        const Text('Please select any one option'),
        ..._list.map((e) => Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(
                      value: e,
                      groupValue: _radioValue,
                      onChanged: radioButtonChanges,
                      activeColor: Colors.blueAccent,
                    ),
                    Expanded(
                      child: Text(e, style: const TextStyle(fontSize: 18.0)),
                    ),
                    const Text('₹30', style: TextStyle(fontSize: 16.0)),
                    const SizedBox(
                      width: 8,
                    )
                  ],
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: double.infinity,
                )
              ],
            ))
      ],
    );
  }
}
