import 'package:flutter/material.dart';
import "package:oktoast/oktoast.dart";

class JacklinCounter extends StatefulWidget {
  @override
  _JacklinCounterState createState() => _JacklinCounterState();
}

class _JacklinCounterState extends State<JacklinCounter> {
  int _counter = 0;

  void _incCount(){
    setState(() {
      _counter++;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu), tooltip: '菜单', onPressed: null),
        title: new Text("计数器"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: '搜索', onPressed: null)
        ],
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
        child: Text('count:$_counter',style: TextStyle(fontSize: 50,color: Colors.black),),
//      child: new Image.network("http://5b0988e595225.cdn.sohucs.com/images/20190320/e72d79f28425494c959b8ee67811363b.gif"),
      ),
      floatingActionButton: new FloatingActionButton(
          child: Text('添加'),
          tooltip: '添加',
          onPressed: () {
            showToast('添加计数', position: ToastPosition(align: Alignment.center));
            _incCount();
          }),
    );
  }
}
