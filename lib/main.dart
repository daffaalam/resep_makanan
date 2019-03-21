import 'package:flutter/material.dart';
import 'package:resep_makanan/view/detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  List<String> data = ['Chicken','Salmon','Beef','Pork','Avocado','Apple Cider Vinegar','Asparagus'];

//  List data = [
//    {
//      "name": "Chocolate Caramel Crispy",
//      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
//    },
//    {
//      "name": "Breakfast Potatoes",
//      "image_url": "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
//    },
//    {
//      "name": "Smoked Haddock Kedgeree",
//      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
//    },
//    {
//      "name": "Shakshuka",
//      "image_url": "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
//    },
//    {
//      "name": "Salmon Eggs Eggs Benedict",
//      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
//    },
//    {
//      "name": "Budino Di Ricotta",
//      "image_url": "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
//    },
//    {
//      "name": "Salmon Avocado Salad",
//      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
//    },
//    {
//      "name": "Baked salmon with fennel & tomatoes",
//      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
//    },
//    {
//      "name": "Peanut Butter Cookies",
//      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
//    },
//    {
//      "name": "Fruit and Cream Cheese Breakfast Pastries",
//      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
//    },
//  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Bahan Makanan',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Bahan Makanan'),
        ),
        body: getListView(),
      ),
    );
  }

  ListView getListView() => ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(data[index]),
        // Ketika pengguna melakukan tap pada ListTile, pindah ke DetailScreen.
        // Selain membuat DetailScreen, data juga dikirimkan
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(item: data[index]),
            ),
          );
        },
      );
    },
  );

}