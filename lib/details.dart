import 'package:flutter/material.dart';

import 'contact_info.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.contact}) : super(key: key);
final Contact contact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Center(
            child: Text('Details',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
          ),
        ),
        body: ListView(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/3.jpg'),
            ),
             ListTile(
              subtitle: Center(
                  child: Text('${contact.region}, ${contact.country}',
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ))),
              title: Center(
                child: Text(contact.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
              ),
            ),
            Container(
              height: 150,
              width: 20,
              color: const Color(0xFFBCDAF5),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.message,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder()),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.call,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder()),
                        )
                      ],
                    ),
                    title: const Text(
                      'Moblie',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    subtitle:  Text(
                      contact.phone,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xB66E6E6E)),
                    ),
                  ),
                  ListTile(
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const CircleBorder()),
                        )
                      ],
                    ),
                    title: const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    subtitle:  Text(
                      contact.email,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xB66E6E6E)),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Group',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Family',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xB66E6E6E)),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text('Account Link',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
            ),
            Container(
              height: 120,
              width: 20,
              color: const Color(0xFFBCDAF5),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    trailing: Image.asset('assets/8.png'),
                    title: const Text(
                      'Telegram',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    trailing: Image.asset('assets/9.png'),
                    title: const Text(
                      'WhatsApp',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
             const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text('More Options',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
            ),
            Container(
              height: 120,
              width: 20,
              color: const Color(0xFFBCDAF5),
           child:ListView (
             shrinkWrap: true,
             children: const[
               ListTile(
                 title:  Text(
                      'WhatsApp',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
               ),
               ListTile(
                 title:  Text(
                      'QP Code',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
               )
             ],
             
           ),
            )],
        ));
  }
}
