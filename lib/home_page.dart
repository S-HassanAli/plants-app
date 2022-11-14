import 'package:flutter/material.dart';
import 'point_tab_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'concept.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(

             // height: MediaQuery.of(context).size.height / 4,
              color: Colors.white,
            height: 220,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children:[

                      Padding(padding: EdgeInsets.only(right: 220),
                        child: IconButton ( icon: FaIcon(FontAwesomeIcons.alignLeft), onPressed: (){
                          print('hello');
                        },),
                      ),

                  IconButton( icon: FaIcon(FontAwesomeIcons.shoppingBag), onPressed: (){
                    print('hello');
                  },),
                  SizedBox(width: 20,),
                    IconButton( icon: FaIcon(FontAwesomeIcons.search), onPressed: () {
                      print('hello');
                    }),
                      SizedBox(width: 5,),

                    ]),
                SizedBox(height: 50,),
                TabBar(

                  indicatorWeight: 0,
                  labelStyle: TextStyle(fontFamily: 'lato',fontSize: 17,),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 5,color: Colors.green,
                    ),
                  ),
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,


              tabs: [
                Tab(
                  text: 'Concept',
                ),
                Tab(
                  text: 'Popular',
                ),
                Tab(
                  text: 'New'
                )
              ],
              controller: _tabController,
              // indicatorSize: TabBarIndicatorSize.tab,
            ),




            ]),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(child: Center(child: ConceptPage())),
                  Center(child: Text('Person')),
                  Text('data'),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}