
import 'dart:ui';

import 'package:contact_app/details.dart';
import 'package:cupertino_listview/cupertino_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:group_list_view/group_list_view.dart';
import 'package:grouped_list/grouped_list.dart';

import 'contact_info.dart';

class HomePage  extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);
  final ScrollController _scrollController = ScrollController();

final List<Map<String,String>> data =[
	{
		"name": "Risa Massey",
		"phone": "(371) 573-2933",
		"email": "dapibus.id.blandit@protonmail.com",
		"region": "South Island",
		"country": "Italy"
	},

  {
		"name": "Herman Landry",
		"phone": "1-211-954-7781",
		"email": "pede.ac@protonmail.com",
		"region": "Saskatchewan",
		"country": "Australia"
	},
	{
		"name": "Rhoda Clay",
		"phone": "1-928-595-3210",
		"email": "cras.dictum@google.com",
		"region": "South Gyeongsang",
		"country": "Indonesia"
	},
	{
		"name": "Grace Wong",
		"phone": "1-726-674-2568",
		"email": "quis.tristique@hotmail.com",
		"region": "Magallanes y Antártica Chilena",
		"country": "Brazil"
	},
	{
		"name": "Jayme Holt",
		"phone": "1-891-571-8036",
		"email": "mauris.a@aol.org",
		"region": "Manisa",
		"country": "South Korea"
	},
	{
		"name": "Mohammad George",
		"phone": "1-720-220-9042",
		"email": "arcu@yahoo.net",
		"region": "Victoria",
		"country": "Brazil"
	},
  
	{
		"name": "Erica Franks",
		"phone": "(652) 303-1385",
		"email": "non.arcu@hotmail.edu",
		"country": "China",
		"region": "Madrid"
	},
	{
		"name": "Giacomo Ellison",
		"phone": "(892) 687-4428",
		"email": "sit.amet.risus@protonmail.net",
		"country": "Costa Rica",
		"region": "Östergötlands län"
	},
	{
		"name": "Hedy Wiley",
		"phone": "(352) 225-2708",
		"email": "sollicitudin.commodo@protonmail.com",
		"country": "Pakistan",
		"region": "San Luis Potosí"
	},
	{
		"name": "Coby Hyde",
		"phone": "1-505-764-7388",
		"email": "suspendisse.sed@icloud.net",
		"country": "China",
		"region": "Guanajuato"
	},

  {
		"name": "Martina Anthony",
		"phone": "1-952-646-6137",
		"email": "natoque.penatibus@hotmail.couk",
		"country": "Costa Rica",
		"region": "Auvergne"
	},
	{
		"name": "Hamish Farrell",
		"phone": "(242) 642-4368",
		"email": "class@hotmail.com",
		"country": "France",
		"region": "Wyoming"
	},
	{
		"name": "Benjamin Wells",
		"phone": "(848) 877-1140",
		"email": "accumsan.neque.et@hotmail.com",
		"country": "Indonesia",
		"region": "Brandenburg"
	},
	{
		"name": "Christen Mason",
		"phone": "(309) 139-3902",
		"email": "rhoncus@yahoo.net",
		"country": "Australia",
		"region": "Tyrol"
	},
	{
		"name": "Alfonso Casey",
		"phone": "(688) 128-2387",
		"email": "semper.auctor@icloud.net",
		"country": "Peru",
		"region": "Tasmania"
	},

	{
		"name": "Asher Brock",
		"phone": "1-356-317-2593",
		"email": "massa.integer.vitae@yahoo.edu",
		"country": "Australia",
		"region": "Zeeland"
	},
	{
		"name": "Callie Terrell",
		"phone": "(859) 786-3251",
		"email": "vitae.posuere@yahoo.com",
		"region": "Lower Austria",
		"country": "Italy"
	},
	{
		"name": "Garth Lott",
		"phone": "(758) 961-4471",
		"email": "est@yahoo.net",
		"region": "Osun",
		"country": "South Korea"
	},
	{
		"name": "Nero Walters",
		"phone": "(601) 987-8486",
		"email": "vestibulum.accumsan@outlook.com",
		"region": "Gävleborgs län",
		"country": "Australia"
	},
	{
		"name": "Dora Mathis",
		"phone": "(567) 879-7598",
		"email": "velit.cras.lorem@icloud.net",
		"region": "Zuid Holland",
		"country": "Chile"
	},

  	{
		"name": "Violet Carney",
		"phone": "(981) 568-1950",
		"email": "in.felis@icloud.net",
		"region": "Ceará",
		"country": "Chile"
	},
	{
		"name": "Briar Short",
		"phone": "1-516-441-1385",
		"email": "tristique.ac.eleifend@aol.org",
		"region": "Lower Austria",
		"country": "Colombia"
	},
	{
		"name": "Beverly Dejesus",
		"phone": "(932) 249-4103",
		"email": "suspendisse.dui.fusce@outlook.ca",
		"region": "Carinthia",
		"country": "United Kingdom"
	},
	{
		"name": "Emily Hardy",
		"phone": "(117) 412-6855",
		"email": "lobortis.ultrices@protonmail.ca",
		"region": "Västra Götalands län",
		"country": "United States"
	},
	{
		"name": "George Wells",
		"phone": "(802) 308-9368",
		"email": "tristique@protonmail.com",
		"region": "Ulster",
		"country": "Colombia"
	},

  	{
		"name": "Pamela Nixon",
		"phone": "1-886-885-7354",
		"email": "eget.massa@google.ca",
		"region": "Podlaskie",
		"country": "Spain"
	},
	{
		"name": "Melvin Hanson",
		"phone": "1-764-398-7491",
		"email": "duis.ac@protonmail.couk",
		"region": "łódzkie",
		"country": "Pakistan"
	},
	{
		"name": "Cedric Nielsen",
		"phone": "(677) 100-6508",
		"email": "rhoncus.proin@google.ca",
		"region": "Wyoming",
		"country": "Nigeria"
	},
	{
		"name": "Basil Garrett",
		"phone": "(515) 803-5112",
		"email": "ante.dictum@google.ca",
		"region": "Provence-Alpes-Côte d'Azur",
		"country": "Brazil"
	},
	{
		"name": "Macy Potter",
		"phone": "1-622-861-5853",
		"email": "purus.duis.elementum@aol.couk",
		"region": "Punjab",
		"country": "Colombia"
	}
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Center(
              child: CircleAvatar(radius:25 ,
              backgroundImage: AssetImage('assets/1.jpg') ,),
            ),
          )
        ],
        title: const Text('My Contacts',
        style: TextStyle(fontSize: 28,
        fontWeight:FontWeight.w500,
              color: Colors.black,),
      ),
       bottom: PreferredSize (
          preferredSize:const Size.fromHeight(85),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(20),
              ),
              hintText: 'Search by name or number',
              prefixIcon: const Icon(Icons.search_sharp)
            ),
          ))),
  ),
  body: SafeArea(
    child: ListView(
      controller: _scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 18),
      children: [
        const Text('Recents',
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.w600),),
        ListView.separated(
          controller: _scrollController,
          shrinkWrap: true,
          itemBuilder: (context, dynamic){
          return   ListTile(
            onTap: (){
              
      Navigator.push(context,MaterialPageRoute(builder: (context) {
        return  Details(contact: Contact(country: 'Ghana',
        email: 'daddy@gmail.com', name: 'Daddy', region: 'Accra', phone: '+233 504 483 109'),);
      }));
            },
          title:const  Text('Daddy',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          subtitle: const Text('+151 369 6669'),
          trailing: const Icon(Icons.more_horiz,color: Colors.black,),
          leading: const CircleAvatar(
            radius:22 ,
                backgroundImage: AssetImage('assets/2.jpg'),
          )
        );
        }, separatorBuilder: (context, index){
          return const Divider(
          indent: 15,
          thickness: 1.5,
        );
        }, itemCount: 3),
     const  Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18),
         child:  Text('Contacts',
          style:  TextStyle
          (fontSize: 30,fontWeight: FontWeight.w600),),
       ),
          GroupedListView <Map<String, String>, String>(
            shrinkWrap: true,
      elements:  data,
      groupBy: (element) => element['name'].toString().substring(0,1),
      groupSeparatorBuilder: (String groupByValue) => 
      Padding(
           padding:const EdgeInsets.symmetric(horizontal: 18),
        child: SizedBox(
          width: MediaQuery.of (context).size.width,
          child: Text(groupByValue.substring(0,1),
           textAlign:TextAlign.right,
           style: const TextStyle(
             fontWeight: FontWeight.w600, fontSize: 20),),
        ),
      ),
      itemBuilder: (context, Map<String,String> element) {
        Contact contact = Contact.fromJson(element);
        return Column(
        children: [
          ListTile(
            onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (context) {
        return Details(contact: contact,);
      }));},
              title: Text('${element['name']}',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
              subtitle: Text('${element['phone']}'),
              trailing: const Icon(Icons.more_horiz,color: Colors.black,),
              leading:const CircleAvatar(
                radius:22 ,
                    backgroundImage: AssetImage('assets/2.jpg'),
              )
            ),
           const  Divider(
          indent: 15,
          thickness: 1.5,
        )
        ],
      );
      },
      
      itemComparator: (item1, item2) => item1['name']!.compareTo(item2['name']!), // optional
      useStickyGroupSeparators: true, // optional
      floatingHeader: true, // optional
      order: GroupedListOrder.ASC, // optional
    ),
      ],
    ),
  ),
  floatingActionButton:  FloatingActionButton(
    backgroundColor:const  Color(0xff1A4ADA),
    onPressed:(){
    } ,
    child: const Icon(Icons.add,)
  ));
}
}