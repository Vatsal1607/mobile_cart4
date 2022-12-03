import 'package:flutter/material.dart';

class NextCategorywiseProduct extends StatefulWidget {
  const NextCategorywiseProduct({Key? key}) : super(key: key);

  @override
  State<NextCategorywiseProduct> createState() => _NextCategorywiseProductState();
}

class _NextCategorywiseProductState extends State<NextCategorywiseProduct> {

  List<String> list = <String>['1', '2', '3', '4'];
  late String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product details'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Column(
            children: [
              const Text('This is the paragraph of the details'),
              const SizedBox(height: 10,),
              Image.network('https://images.unsplash.com/photo-1515734674582-29010bb37906?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8a29yZWFuJTIwd29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                height: 500,
                width: double.infinity,
              ),

              Row(
                children: [
                  const SizedBox(width: 15,),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 42,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    dropdownColor: Colors.orangeAccent[100],
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text("Qty: ${value}"),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        print('Added to cart');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text('Add to Cart', style: TextStyle(
                            fontSize: 18
                        ),)),
                      ),
                    ),

                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        print('Buying done');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text('Buy Now', style: TextStyle(
                            fontSize: 18
                        ),)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
