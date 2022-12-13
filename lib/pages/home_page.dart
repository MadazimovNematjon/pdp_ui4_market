import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Cars",
          style: TextStyle(
              fontSize: 25, color: Colors.red,),
        ),
        brightness: Brightness.light,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(

                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    //#categoreCars
                    children: [
                      catigoreCar(true, "All"),
                      catigoreCar(false, "Blue"),
                      catigoreCar(false, "Yellow"),
                      catigoreCar(false, "Green"),
                      catigoreCar(false, "Red"),
                    ],
                  ),
                ),

                const SizedBox(height: 20,),
                makeItem('assets/images/images_1.jpg'),
                makeItem('assets/images/images_2.jpg'),
                makeItem('assets/images/images_3.jpg'),
                makeItem('assets/images/images_4.jpg'),
                makeItem('assets/images/images_2.jpg'),
                makeItem('assets/images/images_4.jpg'),
              ],
            )),
      ),
    );
  }

  Widget catigoreCar(bool type, String name) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: type ? Colors.red : Colors.white,
        ),
        child: Center(child: Text(name,style: TextStyle(fontSize:type ? 20 : 17,color:type ? Colors.white : Colors. grey),)),
      ),
    );
  }

  Widget makeItem( String image) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30,),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 10,
          offset: const Offset(0, 10),
      )
          ],
    image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start  ,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("PDP Cars",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("100\$",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),

                  ],
                ),
                const SizedBox(width: 15,),
                const Text('Electric',style: TextStyle(color: Colors.red,fontSize: 20),),

              ],
            ),
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Icon(Icons.favorite_border,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
