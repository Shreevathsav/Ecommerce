import 'package:ecommerce/Screens/navbar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        drawer: NavBar(),
        appBar: AppBar(

          title: Text('Get it!'),
          
          
          elevation: 0,
        ),
        body: Column(
          
          children: <Widget>[
            CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Container( 
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),border: Border.all(
                      color: Colors.black,
                      width: 4.0,
                      style: BorderStyle.solid),
                  //     boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.blueGrey,
                  //     offset: const Offset(
                  //       5.0,
                  //       5.0,
                  //     ),
                  //     blurRadius: 10.0,
                  //     spreadRadius: 2.0,
                  //   ), //BoxShadow
                  //   BoxShadow(
                  //     color: Colors.white,
                  //     offset: const Offset(0.0, 0.0),
                  //     blurRadius: 0.0,
                  //     spreadRadius: 0.0,
                  //   ), //BoxShadow
                  // ]
            ),
            child:Column(
            children: <Widget>[
              Image(image: AssetImage('images/sample.jpg'),),
              SizedBox(
                height: 15.0,
              ),
               Center(child: Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Iphone 11 Pro Max'),
            SizedBox(
              width: 15.0,
            ),
            ElevatedButton(onPressed:(){}, child: Text('Buy Now'))
          ],
        ),
      ))
            ],
          )
          )
           
        );
      },
    );
  }).toList(),
),

     
        Divider(
          height: 20,
            thickness: 5,
            
        ),

          ],
        ),
        
      )
      );
  }
}