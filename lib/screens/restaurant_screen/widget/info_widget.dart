import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      color: const Color.fromARGB(255, 227, 242, 247),
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 64.0,
                  width: 64.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32.0),
                    border: Border.all(width: 1.0, color: Colors.black12),
                  ),
                  child: Image.asset(
                    'assets/lemon.png',
                    height: 28,
                    width: 28,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 4,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      color: Colors.green,
                      child: const Text(
                        'Open',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Text(
                        'Closing in 1 hour',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Icon(Icons.tag_faces),
                    const SizedBox(width: 8),
                    Icon(Icons.remove_red_eye)
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.tag_faces,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          '₹30',
                          style: TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.watch_later,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          '30-45 Mins',
                          style: TextStyle( fontSize: 16.0),
                        )
                      ],
                    ),
                    const Text(
                      'Min Order: ₹99',
                      style: TextStyle( fontSize: 16.0),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
