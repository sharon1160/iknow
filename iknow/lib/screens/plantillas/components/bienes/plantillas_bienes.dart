import 'package:flutter/material.dart';
import 'package:iknow/screens/plantillas/components/bienes/especificacion/especificacion_plantilla.dart';
import 'package:iknow/screens/plantillas/components/bienes/requerimiento/requerimiento_plantilla_screen.dart';

 
class PlantillasBienesScreen extends StatefulWidget {
  const PlantillasBienesScreen({Key key}) : super(key: key);
 
  @override
  _PlantillasBienesScreenState createState() => new _PlantillasBienesScreenState();
}
 
class _PlantillasBienesScreenState extends State<PlantillasBienesScreen> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    new Tab(child: new Text(
          'Requerimiento'
      ),
    ),
    new Tab(child: new Text(
          'Especificaciones Técnicas'
      ),
    ),
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
          "Bienes",
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
              MyApp(), //cccccccccccccccccccc
              MyApp2()
        ],

      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => _tabController.animateTo((_tabController.index + 1) % 2), // Switch tabs
        child: new Icon(Icons.swap_horiz),
      ),
    );
  }
}

