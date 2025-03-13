import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Demo',
      theme: ThemeData.dark(), // Menggunakan tema dark
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Text(
        'Nama: Fauzan Gani Pratama',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'NIM: 2211102355',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Warna Favorit: Hitam',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Hobi: Musik, Game',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Asal Daerah: Jakarta Barat',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple, // Warna header atas ungu
      ),
      backgroundColor: Colors.black, // Background aplikasi hitam
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.purple, // Warna header bawah ungu
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor:
              Colors.transparent, // Membuat transparan agar mengikuti container
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.white),
              label: 'Nama',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.confirmation_number_outlined,
                color: Colors.white,
              ),
              label: 'NIM',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.palette_outlined, color: Colors.white),
              label: 'Warna Favorit',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note, color: Colors.white),
              label: 'Hobi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city_outlined, color: Colors.white),
              label: 'Asal Daerah',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow, // Warna teks saat dipilih
          unselectedItemColor: Colors.white, // Warna teks yang tidak dipilih
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
