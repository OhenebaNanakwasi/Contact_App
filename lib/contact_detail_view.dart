import "package:flutter/material.dart";

class ContactDetailView extends StatelessWidget {
  const ContactDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'Contacts',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1535930749574-1399327ce78f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80')),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Nana Kwasi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'Tarkwa,Bankyim',
              style:
                  TextStyle(fontSize: 10, color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Container(
            color: Colors.blueGrey.withOpacity(0.1),
            child: Column(
              children: [
                ListTile(
                    title: Text(
                      'Mobile',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    subtitle: Text('+233 555853564',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.normal)),
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                      TextButton(onPressed: () {}, child: Icon(Icons.message)),
                      TextButton(onPressed: () {}, child: Icon(Icons.call))
                    ])),
                ListTile(
                  title: Text('Email',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                  subtitle: Text('nyandekwasi95@gmail.com',
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.normal)),
                  trailing:
                      TextButton(onPressed: () {}, child: Icon(Icons.email)),
                ),
                ListTile(
                  title: Text(
                    'Group',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  subtitle: Text(
                    'UI friends',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Account Linked'),
            ),
          ),
          Container(
            color: Colors.blueGrey.withOpacity(0.1),
            child: Column(children: [
              ListTile(
                title: Text('Telegram'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/Telegram.png'),
                  ],
                ),
              ),
              ListTile(
                title: Text('WhatsApp'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/WhatsApp.png'),
                  ],
                ),
              ),
            ]),
          ),
          Card(
            child: ListTile(
              title: Text('More Options'),
            ),
          ),
          Container(
            color: Colors.blueGrey.withOpacity(0.1),
            child: Column(
              children: [
                ListTile(
                  title: Text('Share Contact'),
                ),
                ListTile(
                  title: Text('RQ Code'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
