import 'package:flutter/material.dart';
import 'package:homework4/login.dart';
import 'package:homework4/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.grey,
      appBarTheme: AppBarTheme(color: Colors.white,)
      ),
          title: 'HomeWork4',
          home: HomePage(),      
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this,);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.arrow_back),
        bottom:TabBar(
          indicatorColor: Colors.red[500],
          indicatorWeight: 3.0,
          controller: _tabController,
          tabs: [
          Tab(
            text: 'Login',),
          Tab(
            text: 'Register',),

        ]) ,
      ),
      
      body: TabBarView(
        controller: _tabController,
        children: [
        Login(),
        Register()

      ]),
    );
  }
}