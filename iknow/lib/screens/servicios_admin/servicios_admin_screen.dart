import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iknow/screens/home_admin/home_admin_screen.dart';


class ServiciosAdminScreen extends StatefulWidget{
  @override
  _ServiciosAdminScreenState createState() => _ServiciosAdminScreenState();
}


@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: ServiciosAdminScreen(),
  );
}


class _ServiciosAdminScreenState extends State<ServiciosAdminScreen> {

  var _searchview = new TextEditingController();
  bool _firstSearch = true;
  String _query = "";
  double width;

  List<String> _filterListTit;
  List<String> _filterListDes;
  List<String> _filterListImg;
  List<String> _filterListFech;
  List<String> _filterListAutor;
  
  List<String> titleList;
  List<String> descList;
  List<String> fechList;
  List<String> imgList;
  List<String> autList;

  @override
  void initState() {
    super.initState();

    titleList = new List<String>();
    titleList = [
      "Requerimiento de Servicios N° 001-2020-MDC/G-MCR",
      "Requerimiento de Servicios N° 002-2020-MDC/G-JVT",
      "Requerimiento de Servicios N° 003-2020-MDC/G-EVT",
      "Requerimiento de Servicios N° 004-2020-MDC/G-EPG",
      "Requerimiento de Servicios N° 005-2020-MDC/G-AJQ",
      "Requerimiento de Servicios N° 006-2020-MDC/G-YOS",
      "Requerimiento de Servicios N° 007-2020-MDC/G-CAQ",
      "Requerimiento de Servicios N° 008-2020-MDC/G-MFG"
    ];

    descList = new List<String>();
    descList = [
      "+ Términos de Referencia.",
      "+ Términos de Referencia.",
      "+ Términos de Referencia.",
      "+ Términos de Referencia.",
      "+ Términos de Referencia.",
      "+ Términos de Referencia.",
      "+ Términos de Referencia.",
      "+ Términos de Referencia."
    ];

    autList = new List<String>();
    autList = [
      "Hecho por: Martha Chavez Rosas",
      "Hecho por: Juan Vilca Taype",
      "Hecho por: Efrain Viera Taype",
      "Hecho por: Eddie Palacios Gutierrez",
      "Hecho por: Ana Jara Quispe",
      "Hecho por: Yolanda Ope Santana",
      "Hecho por: Camila Antares Quicaño",
      "Hecho por: Marcela Flores Garcia"
    ];

    fechList = new List<String>();
    fechList = [
      "Fecha: 01/12/2020",
      "Fecha: 29/11/2020",
      "Fecha: 28/11/2020",
      "Fecha: 27/11/2020",
      "Fecha: 26/11/2020",
      "Fecha: 25/11/2020",
      "Fecha: 24/11/2020",
      "Fecha: 23/11/2020"
    ];

    imgList = new List<String>();
    imgList = [
      "assets/images/a2.png",
      "assets/images/a1.png",
      "assets/images/a4.png",
      "assets/images/a3.png",
      "assets/images/a5.png",
      "assets/images/a6.png",
      "assets/images/a7.png",
      "assets/images/a8.png"
    ];
  }

  

  _ServiciosAdminScreenState() {
    _searchview.addListener(() {
      if(_searchview.text.isEmpty) {
        setState(() {
          _firstSearch = true;
          _query = "";
        });
      }
      else {
        setState(() {
          _firstSearch = false;
          _query = _searchview.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              backgroundColor: Color(0xff24dcbb),
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "Servicios",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(
                          fontWeight: FontWeight.w300/*, color: Colors.white*/, 
                        ),
                  ),
                  background: Image.asset("assets/background/misdocss.jpg",fit: BoxFit.cover),
              ),
            ),
          ];
        },
        body: new Container(
          margin: EdgeInsets.only(left: 1.0, right: 1.0, top: 10.0),
          child: new Column(
            children: <Widget> [
              _createSearchView(),
              _firstSearch ? _createListView(context) : _performSearch()
            ],
          ),
        ),
      )
    );
  }

  Widget _createSearchView() {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white
        ),
        child: Material(
          elevation: 3.0,
          shadowColor: Colors.grey,
          borderRadius: BorderRadius.circular(100),
          child: TextField(
            controller: _searchview,
            style: TextStyle(fontSize: 15, color: Colors.black87),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.black38),
              hintText: "Search here",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  Widget _createListView(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.38;
    return new Flexible(
      child: new ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context,index) {
          return new Card(
            child: Row(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  child: Image.asset(imgList[index]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: width,
                        child: Text(
                          titleList[index], // tituloo
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          descList[index], // descripcion
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey[500]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          autList[index], // descripcion
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey[500]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          fechList[index], // fecha
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey[500]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return HomeAdminScreen();
                      }),
                    );
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 90,//52
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/descargar.svg"),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _performSearch() {

    _filterListTit = new List<String>();
    _filterListDes = new List<String>();
    _filterListAutor = new List<String>();
    _filterListImg = new List<String>();
    _filterListFech = new List<String>();

    for(int i=0; i<titleList.length; i++) {
      var itemTit = titleList[i];
      var itemImg = imgList[i];
      var itemDes = descList[i];
      var itemFech = fechList[i];
      var itemAut = autList[i];

      if( itemTit.toLowerCase().contains(_query.toLowerCase())) {
        _filterListTit.add(itemTit);
        _filterListImg.add(itemImg);
        _filterListDes.add(itemDes);
        _filterListAutor.add(itemAut);
        _filterListFech.add(itemFech);
      }
    }

    return _createFilteredListView();
  }

  Widget _createFilteredListView() {
    return new Flexible(
      child: new ListView.builder(
        itemCount: _filterListImg.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: Row(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  child: Image.asset(_filterListImg[index]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: width,
                        child: Text(
                          _filterListTit[index], // tituloo
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          _filterListDes[index], // descripcion
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey[500]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          _filterListAutor[index], // descripcion
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey[500]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        child: Text(
                          _filterListFech[index], // descripcion
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey[500]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return HomeAdminScreen();
                      }),
                    );
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 90,//52
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/descargar.svg"),
                    ),
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}

