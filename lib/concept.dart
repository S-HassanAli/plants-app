import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main (){
  runApp(ConceptPage());
}
class ConceptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(

          children: [
            SizedBox(height: 30,),
            CarouselSlider(

              items: [

                 Container(

                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.only(top: 30, left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Gasteri Kyoryu', style: TextStyle(fontFamily: 'Lato',fontSize: 25),),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:5, left: 25),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('w 300 × h 310 mm', style: TextStyle(fontFamily: 'Lato',fontSize: 12,color: Colors.grey),),

                                ]),),

                             Padding( padding: EdgeInsets.only(top: 230,right: 200),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [Text('\$222.00', style: TextStyle(fontFamily: 'Bold',fontSize: 14,color: Colors.black),)
                             ]
                             )
                             ),









                      ],
                    ),


                    decoration: BoxDecoration(
                      

                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(

                        image: NetworkImage("https://media.allure.com/photos/5f10ba2f9b23f80008354f42/master/w_1280,c_limit/Urbanstems%20The%20Bosco%20ZZ%20Plant.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),


                  ),

                 Container(

                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.only(top: 30, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Alocasia Amazónica', style: TextStyle(fontFamily: 'Lato',fontSize: 25),),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:5, left: 25),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('w 300 × h 310 mm', style: TextStyle(fontFamily: 'Lato',fontSize: 12,color: Colors.grey),),
                            ],
                          ),
                        ),

                        Padding( padding: EdgeInsets.only(top: 230,right: 200),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text('\$222.00', style: TextStyle(fontFamily: 'Bold',fontSize: 14,color: Colors.black),)
                                ]
                            )
                        ),
                      ],
                    ),


                    margin: const EdgeInsets.all(0.0),
                    decoration: BoxDecoration(

                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(

                        image: NetworkImage("https://endanea.com/wp-content/uploads/2020/06/alocasia-amazonica-planta-de-interior.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),


                  ),

                 Container(

                    child: Column(

                      children: [

                        Padding(padding: EdgeInsets.only(top: 30, left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Gasteri Kyoryu', style: TextStyle(fontFamily: 'Lato',fontSize: 25,color: Colors.white),),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:5, left: 25),
                          child: Row(
                            children: [
                              Text('w 300 × h 310 mm', style: TextStyle(fontFamily: 'Lato',fontSize: 12,color: Colors.grey.shade700),),
                            ],
                          ),
                        ),

                        Padding( padding: EdgeInsets.only(top: 230,right: 200),
                            child: Column(
                                children: [Text('\$222.00', style: TextStyle(fontFamily: 'Bold',fontSize: 14,color: Colors.black),)
                                ]
                            )
                        ),
                        
                        Padding(padding: EdgeInsets.only(left: 200),
                          child: Column(
                            children:[Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.zero,)
                              ),
                            ),
                    ]
                          ),
                        )
                      ],
                    ),


                    margin: const EdgeInsets.all(0.0),
                    decoration: BoxDecoration(

                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(

                        image: NetworkImage("https://jayscotts.com/wp-content/uploads/2020/04/69117.16.MBW_.Set_.ShortHayden.wplant.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),


                  ),

              ],
              options: CarouselOptions(

                height: 380.0,

                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 8,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                //autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.7,
              ),
            ),
          ]),
    );
  }
}
