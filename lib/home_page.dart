import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const IconData camera_alt_rounded =
      IconData(0xf60b, fontFamily: 'MaterialIcons');
  final MaterialStateProperty<Color?>? backgroundColor;

  const HomePage({super.key, this.backgroundColor});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_outlined),
              label: 'Comunities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined),
              label: 'Calls',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedIconTheme:
              IconThemeData(color: const Color.fromARGB(255, 31, 165, 35)),
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          showSelectedLabels: true,
          selectedFontSize: 15,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          showUnselectedLabels: true,
          unselectedFontSize: 15,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: const Center(
          child: Text(
            'WathsApp',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(37, 211, 102, 1)),
          ),
        ),
        actions: const [
          Icon(Icons.camera_alt_rounded),
          SizedBox(
            width: 14,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 6,
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: SizedBox(
                height: 55,
                child: SearchBar(
                  padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(211, 255, 255, 255)),
                  elevation: WidgetStatePropertyAll(2),
                  leading: Icon(Icons.search),
                  hintText: 'Search...',
                  hintStyle: WidgetStatePropertyAll(
                      TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 33, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.archive_outlined),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    'Archived',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/three.jpg')),
              title: Padding(
                padding: EdgeInsets.only(),
                child: Text(
                  'Jawan Pak RJ FLutter',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              subtitle: Text(
                'Shazeb: Open project first',
                style: TextStyle(fontSize: 15),
              ),
              trailing: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  '13:22',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/two.jpg'),
              ),
              title: Text(
                'Okasha',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call,
                    size: 15,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Voice call',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              trailing: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  '13:22',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/one.jpg')),
              title: Text(
                'Ashhad',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.mic, size: 19, color: Colors.blue),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    '0:19',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              trailing: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text('Yesterday'),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/seven.jpg')),
              title: Text(
                'Ikhlas',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_outlined,
                    size: 19,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Ok',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              trailing: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text('Yesterday'),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/four.jpg')),
              title: Text(
                'Arsh',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                    size: 19,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Bolo',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              trailing: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text('Yesterday'),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/five.jpg')),
              title: Text(
                'Ali',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                    size: 19,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Assalam o alikum',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              trailing: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  '9/6/24',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/six.jpg')),
              title: Text(
                'John',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.photo,
                    size: 18,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Photo',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              trailing: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  '9/5/24',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/3d-square-with-whatsapp-logo_125540-1572.jpg?w=740&t=st=1726072682~exp=1726073282~hmac=ff4fc638f6094a71eb2917f0abea6b7c5948c78d003091efed74e213de72ef42')),
              title: Text(
                'Zar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_outlined,
                    size: 19,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Haa',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              trailing: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  '8/12/24',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            children: [
              Container(
                height: 150,
                color: Color.fromRGBO(37, 211, 102, 1),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                    ),
                    title: Text('Bilal Salman'),
                    subtitle: Text('03268925015'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('New Group'),
              ),
              ListTile(
                leading: Icon(Icons.person_3),
                title: Text('Contacts'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          )),
    );
  }
}
