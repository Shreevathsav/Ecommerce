import 'package:ecommerce/Models/Categories.dart';
import 'package:ecommerce/Screens/navbar.dart';
import 'package:ecommerce/Utilities/cathelper.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> cate = [];
  @override
  void initState() {
    super.initState();
    getCate();
  }
  getCate(){
    cate = getCategory();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        drawer: NavBar(),
        appBar: AppBar(

          title: Text('Get it!'),
          
          
          elevation: 0,
        ),
        body: SingleChildScrollView(child: 
        Column(
          
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
                  
            ),
            child:Column(
            children: <Widget>[
              Image(image: AssetImage('images/sample.jpg',),),
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
  SizedBox(height: 15.0,),
     
        Divider(
          height: 20,
            thickness: 5,
            
        ),
        Container(
          height: 20.0,
          child: ListView.builder(
            itemCount: cate.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
            return CategoryTile(
              catN: cate[index].cat,
              iconD: cate[index].icons,
            );
          }),
        ),
        Divider(
         height: 20,
            thickness: 5 
        ),
        SizedBox(height: 20.0,),
        Container(child: Text('Deals of the Day',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.normal,),)),

          ],
        ),
        
      ))
      );
  }
}

class CategoryTile extends StatelessWidget {
  late final String catN;
  final iconD;
   CategoryTile({required this.catN,this.iconD});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
      margin: EdgeInsets.only(left:10.0,right: 10.0),
      child: Row(
      children: <Widget>[
        Icon(iconD),
        SizedBox(width: 5.0,),
        Text(catN,style: TextStyle(color: Colors.grey.shade900,fontSize: 15.0,fontWeight: FontWeight.bold),)
      ],
    )));
  }
}