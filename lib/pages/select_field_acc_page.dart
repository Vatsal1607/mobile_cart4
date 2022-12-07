import 'package:flutter/material.dart';
import 'package:mobile_cart4/bottom_pages/account_page.dart';
import 'package:mobile_cart4/pages/order_page.dart';

class SelectField extends StatelessWidget {
  const SelectField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[700]
                    ),
                    child: const Text('Your Orders', style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 2,
                      wordSpacing: 5,
                    ),)
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown[700],
                    ),
                    child: const Text('Your Account', style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 2,
                      wordSpacing: 5,
                    ),)
                ),
              ),
            ],
          ),
        )
    );
  }
}
