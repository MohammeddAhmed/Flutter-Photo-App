import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 20.0,
          elevation: 0.0, //عمل الاب بار والبدي نفس اللون فش فرق
          title: Row(
            children: const [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage('https://i.pinimg.com/originals/40/58/2a/40582ada1407af9c33981c3a2a5ac3c8.jpg'),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'Chats',
                 style: TextStyle(
                   color: Colors.black,
                 ),
              ),
            ],
          ),
          actions: [
            IconButton(
              padding:const EdgeInsetsDirectional.only(
                  end: 20.0
              ),
              icon: const CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.blue,
                child:  Icon(
                  Icons.camera_alt,
                  size: 18.0,
                  color: Colors.white,
                 ),
              ),
              onPressed: (){},
            ),
            IconButton(
              padding:const EdgeInsetsDirectional.only(
                end: 20.0
              ),
              icon: const CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.blue,
                child:  Icon(
                  Icons.edit,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
              onPressed: (){},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.all(5.0,), //المحتوى الداخلي
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0,),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                      children:
                      const [
                        Icon(
                            Icons.search
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                            'Search',
                        ),
                      ],
                    ),
                  ),
                const SizedBox(
                     height: 20.0,),
                SizedBox(
                  height: 100.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildStoryItem(),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 15.0,),
                      itemCount: 20),
                ),
                const SizedBox(
                  height: 20.0,),
                ListView.separated(
                  physics:  const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => buildChatItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 15.0,
                    ),
                    itemCount: 20),
              ],
            ),
          ),
        ),
    );
  }


  //1. build item
  //2. build list
  //3. add item to list


  //arrow function => Row,Container,Column
  //1.
  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://i.pinimg.com/736x/9f/7a/c1/9f7ac124f0ab2b045958ea26d575e071.jpg'),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(
        width: 20.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const Text(
              'Abdullah Ahmed',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5.0,),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'hi, How is it going...??',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const Text(
                    '11:14 am'),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  //2.
  Widget buildStoryItem() => SizedBox(
    width: 60.0,
    child: Column(
      children:  [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/dd/7c/90/dd7c90d9432f25fa2bb2aef875a77eca.jpg'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6.0,),
        const Text(
          'mohamed Ahmed',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
  //3.

}