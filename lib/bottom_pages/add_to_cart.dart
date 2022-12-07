import 'package:flutter/material.dart';
import 'package:mobile_cart4/pages/next_add_to_cart.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {

  final int _itemCount = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _itemCount > 0
          ? ListView.builder(
          itemCount: _itemCount,
          itemBuilder: (BuildContext context, int index){
            return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NextAddToCart()));
                },
              child: Card(
                elevation: 3,
                child: ListTile(
                  title: Text('Item name'),
                  subtitle: Text('Price'),
                  leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMghkBynw_Csi8Ua0h1fkYCsLTqfWNAXU7sg&usqp=CAU'),
                  trailing: Icon(Icons.cancel),
                ),
              ),
            );
          },
      ) : Center(child: Text('Nothing to show yet', style: TextStyle(
          color: Colors.black54,
          fontSize: 25,
          fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
