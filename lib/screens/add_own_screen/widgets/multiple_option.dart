import 'package:flutter/material.dart';

class MultipleOption extends StatefulWidget {
  const MultipleOption(this.title);

  final String title;

  @override
  _MultipleOptionState createState() => _MultipleOptionState();
}

class _MultipleOptionState extends State<MultipleOption> {
  final List<String> _list = ['One', 'Two', 'Three', 'Four'];
  bool checkBoxValue = false;

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
        const Text('You can choose multiple options'),
        ..._list.map((e) => Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      onChanged: (checked) {
                        setState(() {
                          checkBoxValue = checked;
                        });
                      },
                      value: checkBoxValue,
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
