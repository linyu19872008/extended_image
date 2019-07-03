import 'package:flutter/material.dart';
import "package:oktoast/oktoast.dart";

class JacklinDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _JacklinDemoState();
  }
}

class _JacklinDemoState extends State<JacklinDemo>
    with SingleTickerProviderStateMixin {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu), tooltip: '菜单', onPressed: null),
        title: new Text("appbar"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: '搜索', onPressed: null)
        ],
      ),
      body: new Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: new FloatingActionButton(
          child: Text('添加'),
          tooltip: 'Add',
          onPressed: () {
            showToast('添加元素', position: ToastPosition(align: Alignment.center));
            count++;
          }),
    );
  }
}
