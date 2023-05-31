import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'Shop App',
        ),
        // centerTitle: true,
        //elevation: 5.0,

        actions:
        [
          IconButton(
            icon: const Icon(
              Icons.notification_important,
            ),
            onPressed: ()
            {

            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed:()
            {

            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,// السكرول الافقي لل روو
        scrollDirection: Axis.vertical, //الديفلت للسكرول العادمول للكلوم

        child: Column(  //Column or Row
          children:
          [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0,),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: 350.0,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children:
                  [
                    const Image(
                     image: NetworkImage(
                         'https://blog.mumzworld.com/wp-content/uploads/2017/11/7-%D9%85%D9%86%D8%AA%D8%AC%D8%A7%D8%AA-%D8%B9%D8%B6%D9%88%D9%8A%D8%A9-%D9%84%D9%84%D8%B9%D9%86%D8%A7%D9%8A%D8%A9-%D8%A8%D8%A7%D9%84%D8%AC%D8%B3%D9%85-%D8%AA%D8%AC%D8%AF%D9%8A%D9%86%D9%87%D8%A7-%D9%81%D9%8A-%D9%85%D9%85%D8%B2%D9%88%D8%B1%D9%84%D8%AF.jpg'),
                     height: 200.0,
                     width: 350.0,
                     fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(.7),
                      padding: const EdgeInsets.symmetric(
                        vertical: 7.0,
                      ),
                      child: const Text(
                        'Product',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}