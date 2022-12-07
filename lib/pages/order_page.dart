import 'package:flutter/material.dart';
import 'package:mobile_cart4/pages/next_order_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);


  final int _itemCount = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: _itemCount > 0
          ? ListView.builder(
        itemCount: _itemCount,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NextOrderPage()));
            },
            child: Card(
              elevation: 3,
              child: ListTile(
                title: Text('Item name'),
                subtitle: Text('Details'),
                leading: Image.network('https://images.unsplash.com/photo-1616597150044-1ba714f658e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGphcGFuJTIwbW9kZWxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        },
      )
          : Center(child: Text('You\'ve not ordered yet', style: TextStyle(
            color: Colors.black54,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
