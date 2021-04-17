import 'package:flutter/material.dart';

class ListIncrementItem extends StatefulWidget {
  final String title;
  final Function? valueChanged;

  ListIncrementItem({required this.title, this.valueChanged}) : super();

  @override
  _ListIncrementItemState createState() => new _ListIncrementItemState();
}

class _ListIncrementItemState extends State<ListIncrementItem> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.valueChanged != null) {
      widget.valueChanged!(_counter);
    }

    return new Row(
      children: <Widget>[
        new Text(widget.title),
        _counter != 0
            ? new IconButton(
                icon: new Icon(Icons.remove),
                onPressed: () => setState(() => _counter--),
              )
            : new Container(),
        new Text(_counter.toString()),
        new IconButton(
            icon: new Icon(Icons.add),
            onPressed: () => setState(() => _counter++))
      ],
    );
  }
}
