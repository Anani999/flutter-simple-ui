import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner:false,
  home:Home(),
  )
);


class Home extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Show Shop'),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.notifications_none),
            onPressed:(){

            }
          ),
          IconButton(
            icon:Icon(Icons.shopping_cart),
            onPressed:(){

            }
          ),
        ]
      ),
      body:SingleChildScrollView(
        child:Container(
          padding:EdgeInsets.all(20),
          child:Column(
            children:[
              Container(
                height:40,
                child:ListView(
                  scrollDirection:Axis.horizontal,
                  children:[
                    AspectRatio(
                      aspectRatio:10/7,
                      child:Container(
                        decoration:BoxDecoration(
                          color:Colors.grey,
                          borderRadius:BorderRadius.circular(20)
                        ),
                        child:Center(
                          child:Text('All')
                        )
                      )
                    ),
                    AspectRatio(
                      aspectRatio:10/7,
                      child:Container(
                        child:Center(
                          child:Text('list1')
                        )
                      )
                    ),
                    AspectRatio(
                      aspectRatio:10/7,
                      child:Container(
                        child:Center(
                          child:Text('list1')
                        )
                      )
                    ),
                    AspectRatio(
                      aspectRatio:10/7,
                      child:Container(
                        child:Center(
                          child:Text('list1')
                        )
                      )
                    ),
                    AspectRatio(
                      aspectRatio:10/7,
                      child:Container(
                        child:Center(
                          child:Text('list1')
                        )
                      )
                    ),
                    AspectRatio(
                      aspectRatio:10/7,
                      child:Container(
                        child:Center(
                          child:Text('list1')
                        )
                      )
                    ),
                    
                  ]
                )
              ),
              SizedBox(height:20),
              FadeInUp(
                duration:Duration(milliseconds:500),
                child:createItem(
                  image:'images/one.jpg',
                  tag:'red',context:context,
                  )
                ),
                SizedBox(height:20),
              FadeInUp(duration:Duration(milliseconds:500),child:createItem(image:'images/two.jpg',tag:'blue',context:context)),
              FadeInUp(duration:Duration(milliseconds:500),child:createItem(image:'images/three.jpg',tag:'white',context:context)),
            ]
          )
        )
      )
    );
  }


  Widget createItem({image,tag,context}){
    return Container(
      height:250,
      decoration:BoxDecoration(
        color:Colors.red,
        borderRadius:BorderRadius.circular(20),
        image:DecorationImage(
          image:AssetImage(image),
          fit:BoxFit.cover
        )
      ),
      width:double.infinity,
      padding:EdgeInsets.all(20),
      margin:EdgeInsets.only(bottom:20),
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:[
            Row(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                Expanded(
                  child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
                    children:[
                      Text("Snearkers",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:30)),
                      SizedBox(height:9),
                      Text("Nike",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20))
                    ]
                  )
                ),
                Container(
                  width:40,
                  height:40,
                  decoration:BoxDecoration(
                    shape:BoxShape.circle,
                    color:Colors.white,
                  ),
                  child:Center(child:Icon(Icons.favorite_border))
                ),
              ]
            ),
            FadeInUp(duration:Duration(milliseconds:200),child:Text('100 \$',
            style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:30)))
          ]
        
      )
    );
  }
}

