import 'package:flutter/material.dart';

class NextOrderPage extends StatelessWidget {
  const NextOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWHZRQU_QQZ2PrrMFefxh6YAFmrBzHyQLzOQ&usqp=CAU',
                  height: 100,
                ),
                SizedBox(width: 10,),
                Text('Product name & details')
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Order info', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 7,),
                Divider(
                  thickness: 1,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 8.0, 8.0, 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('View order details', style: TextStyle(
                    fontSize: 18
                  ),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
