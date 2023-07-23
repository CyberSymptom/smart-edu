import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_edu/models/cart_item.dart';

class CardScreens extends StatelessWidget {
  CardScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<CardProvider>(context);
    final productsDate = product.list;
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart-Edu", style: TextStyle(color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200],
      ),
        body: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GridView.builder(
            padding: EdgeInsets.all(16),
            itemCount: productsDate.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 3/2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
              itemBuilder: (ctx, i){
                return GridTile(
                  child: Image.network(productsDate[i].image),
                footer: GridTileBar(
                  backgroundColor: Colors.deepPurple[300],
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                  title: Text(productsDate[i].title, textAlign: TextAlign.center,),
                  trailing: IconButton(onPressed: () {}, icon: Icon(Icons.location_on_outlined)),
                
                ),
                  );
              }),
        ));
  }
}
