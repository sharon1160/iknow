import 'package:flutter/material.dart';

 
class PlantillasServiciosScreen extends StatefulWidget {
  const PlantillasServiciosScreen({Key key}) : super(key: key);
 
  @override
  _PlantillasServiciosScreenState createState() => new _PlantillasServiciosScreenState();
}
 
class _PlantillasServiciosScreenState extends State<PlantillasServiciosScreen> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'Requerimiento'),
    new Tab(text: 'Términos de Referencia'),
  ];
 
  TabController _tabController;
 
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }
 
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Servicios",
          style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.w300),
        ),
        bottom: new TabBar(
          controller: _tabController,
          tabs: myTabs,
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.black,
        ),
        backgroundColor: Color(0xff24dcbb),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit)
        ],

      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => _tabController.animateTo((_tabController.index + 1) % 2), // Switch tabs
        child: new Icon(Icons.swap_horiz),
      ),
    );
  }
}

