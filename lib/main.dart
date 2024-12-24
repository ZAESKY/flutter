import 'package:flutter/material.dart';
import './pages/list.dart';
import './pages/treeview_custom_object_sample.dart';
void main() {
  runApp(MaterialApp(
    home: SafeArea(child: DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text('你好，flutter'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('ZAESKY'),
              accountEmail: Text('1234@qq.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img2018.cnblogs.com/blog/892594/201912/892594-20191224112106221-1963065698.gif'),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://img2018.cnblogs.com/blog/892594/201912/892594-20191224112106221-1963065698.gif'))),
            ),
            ListTile(title: Text('设置'),trailing: Icon(Icons.feedback),),
            ListTile(title: Text('设置'),trailing: Icon(Icons.feedback),),
            ListTile(title: Text('设置'),trailing: Icon(Icons.feedback),),
            Divider(),
            ListTile(title: Text('设置'),trailing: Icon(Icons.feedback),),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: TabBar(tabs: [
          Tab(text: '手册',icon: Icon(Icons.feedback),),
          Tab(text: 'PDF',icon: Icon(Icons.feedback),),
          Tab(text: '首页',icon: Icon(Icons.feedback),),
        ]),
      ),
      body: myApp(),
    ),))
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TabBarView(children: [
        MyApp(),
        list(items: 'list 3'),
        list(items: 'list 4'),
      ]),
    );
  }
}
