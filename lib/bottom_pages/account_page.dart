import 'package:flutter/material.dart';
import 'edit_account_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image(
                height: MediaQuery.of(context).size.height/4,
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
              ),
              const Positioned(
                bottom: -50.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  // icon: Icon(Icons.person, color: Colors.deepPurple)
                  backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/female-user-profile-avatar-is-woman-character-screen-saver-with-emotions_505620-617.jpg?w=2000'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40,),
          const Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(title: Center(
              child: Text('Crystal Carmella',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )
              ),
            )
            ),
          ),
          Column(
            children: [
              const Text('Hasnainraza@gmail.com', style: TextStyle(
                  fontSize: 20
              ),),
              const SizedBox(height: 20,),
              const Text('Password', style: TextStyle(
                  fontSize: 20
              ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EditAccount()));
                  },
                  child: const Text('Edit'))
            ],
          )
        ],
      ),
    );
  }
}
