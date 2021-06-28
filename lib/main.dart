import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Screen',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      debugShowCheckedModeBanner: false,
      home: EcomAppUI(),
    );
  }
}

class EcomAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "   Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Text(
                "Items",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              trailing: Text(
                "View More",
                style: TextStyle(color: Colors.purple, fontSize: 16.0),
              ),
            ),
            Container(
              height: 290,
              //color: Colors.purple,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  horizontalContainerUI(
                      context,
                      "data:image/jpeg;base64,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",
                      "E5 1620v2"),
                  horizontalContainerUI(
                  context,
                  "data:image/jpeg;base64,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",
                  "Iphone 10"),
                  horizontalContainerUI(
                      context,
                      "data:image/jpeg;base64,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",
                      "Note 20 Ultra"),
                  horizontalContainerUI(
                      context,
                      "data:image/jpeg;base64,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",
                      "MI Box S"),
                  horizontalContainerUI(
                      context,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuoQlGKW_PU5EjeUIR9SoXnZSj1jUWT-h0IA&usqp=CAU",
                      "Macbook Air"),
                  horizontalContainerUI(
                      context,
                      "https://www.nvidia.com/content/dam/en-zz/Solutions/homepage/sfg/geforce-ampere-rtx-30-series-learn-nv-sfg-295x166@2x.jpg",
                      "Nivdia 1080 TI")
                  
                  
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text(
                "More Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            Container(
              height: 80,
              //color: Colors.yellow,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  horizontalListTile(context, "Electronic"),
                  horizontalListTile(context, "Clothes"),
                  horizontalListTile(context, "Appliances"),
                  horizontalListTile(context, "Others"),
                ],
              ),
            ),
            ListTile(
              leading: Text(
                "Popular Items",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              trailing: Text(
                "View More",
                style: TextStyle(color: Colors.purple, fontSize: 16.0),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                verticalContainerUIGridView(
                    context,
                    "https://i2.wp.com/electronicgears.com.pk/wp-content/uploads/2020/11/Intel-Core-i7-10700k-10th-Generation-Processor-LGA1200-Comet-Lake.jpg?fit=825%2C825&ssl=1",
                    " Core i7"),
                verticalContainerUIGridView(
                    context,
                    "data:image/jpeg;base64,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",
                    " Note 20 Ultra"),
                verticalContainerUIGridView(
                    context,
                    "https://i01.appmifile.com/webfile/globalimg/products/pc/mi10/specs1.png",
                    " MI Box S"),
                verticalContainerUIGridView(
                    context,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuoQlGKW_PU5EjeUIR9SoXnZSj1jUWT-h0IA&usqp=CAU",
                    " Macbook Air"),
                verticalContainerUIGridView(
                    context,
                    // "https://www.telemart.pk/uploads/product_image/product_36068_1.jpg",
                    "https://www.nvidia.com/content/dam/en-zz/Solutions/homepage/sfg/geforce-ampere-rtx-30-series-learn-nv-sfg-295x166@2x.jpg",
                    " Nivdia 1080 TI"),
                verticalContainerUIGridView(
                    context,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmpLeNCyjCDidDuFU3SWPU3Q7aGkqHT9FCkg3oGMhn7JTOU1wBfbjB9bTKUZJ8T90KCHw&usqp=CAU",
                    " Iphone 12")
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget horizontalContainerUI(
    BuildContext context, String networkImage, String productName) {
  return Container(
    margin: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    width: 335,
    height: 260,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 190,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(networkImage),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          productName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 15.0,
              color: Colors.yellow,
            ),
            Text(" 5.0 (23 Reviews)", style: TextStyle(fontSize: 15.0)),
          ],
        )
      ],
    ),
  );
}

Widget horizontalListTile(BuildContext context, String itemCategory) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: 192,
    margin: EdgeInsets.all(11.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: ListTile(
      leading: Icon(
        Icons.phone_android,
        size: 20.0,
        color: Colors.purple,
      ),
      title: Text(
        itemCategory,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      subtitle: Text("20 items", style: TextStyle(fontSize: 11.0)),
    ),
  );
}

Widget verticalContainerUIGridView(
    BuildContext context, String networkImage, String productName) {
  return Container(
    margin: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(networkImage),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          productName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              size: 12.0,
              color: Colors.yellow,
            ),
            Text(" 5.0 (23 Reviews)", style: TextStyle(fontSize: 12.0)),
          ],
        )
      ],
    ),
  );
}