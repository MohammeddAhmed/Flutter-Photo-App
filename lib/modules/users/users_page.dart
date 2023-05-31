import 'package:app_test/models/user/user_model.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);

  List<UserModel> users =
  [
    UserModel(
      id: 1,
      name: 'Mohammed Ahmed',
      phone: '+972-561841129',
    ),
    UserModel(
      id: 2,
      name: 'Asma Abdel Aal',
      phone: '+970-974213612',
    ),
    UserModel(
      id: 3,
      name: 'Khaled Jabber',
      phone: '+972-566687429',
    ),
    UserModel(
      id: 4,
      name: 'Yasser al-Agha',
      phone: '+972-598847412',
    ),
    UserModel(
      id: 5,
      name: 'Mona Ayah',
      phone: '+970-595236471',
    ),
    UserModel(
      id: 6,
      name: 'Ismail Hassan',
      phone: '+972-562149783',
    ),
    UserModel(
      id: 7,
      name: 'Adham Al-Sharif',
      phone: '+970-595548761',
    ),
    UserModel(
      id: 8,
      name: 'Passim Obtain',
      phone: '+972-595656760',
    ),
    UserModel(
      id: 9,
      name: 'Mohammed Ahmed',
      phone: '+970-563348521',
    ),
    UserModel(
      id: 10,
      name: 'Ali Ali',
      phone: '+972-599575448',
    ),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: const Text(
          'Users',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize:23.0,
        ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUsersItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
              end: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }

Widget buildUsersItem(UserModel user) => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 25.0,
        backgroundColor: Colors.grey[600],
        child: Text(
          '${user.id}',
          style: const TextStyle(
            fontSize: 27.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        width: 20.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            user.name,        //'${user.name}',
            style: const TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            user.phone,      //'${user.phone}',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ],
  ),
);


//1. build item
//2. build list
//3. add item to list
}


