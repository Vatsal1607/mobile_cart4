import 'package:flutter/material.dart';
import 'account_page.dart';

class EditAccount extends StatelessWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Change Details', style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple
                  ),),
                ),
                const SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Enter new Name',
                              labelText: 'Name'
                          ),
                        ),

                        const SizedBox(height: 30,),

                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: 'Enter new password',
                              labelText: 'Password'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 80,),

                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountPage()),);
                      },
                      child: const Text('Save')
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
