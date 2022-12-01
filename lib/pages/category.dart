import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: Colors.blueAccent,
        width: double.infinity,
        // height: ,
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.only(top: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(3)
              ),
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: Align(
                  child: Text('Category', style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            // SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 130,
                    child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Card(
                            child: Container(
                              width: 120,
                              // height: 10,
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network('https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8a29yZWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                      height: 100,
                                    ),
                                  ),
                                ),
                              ],
                              ),
                            ),
                          );
                        }
                    ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
