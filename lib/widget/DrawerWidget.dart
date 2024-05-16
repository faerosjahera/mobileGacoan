import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gacoan/service/auth_service/auth_serive.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              accountName: Text(
                'Fairuz',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'Fairuz@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: Padding(
                padding: EdgeInsets.only(
                    bottom:
                        10.0), // Berikan jarak 10 piksel di bawah CircleAvatar
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('profile.jpg'),
                ),
              ),
            ),
          ),

          //list menu
          ListTile(
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'homePage');
            },
          ),

          const ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.black,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.black,
            ),
            title: const Text(
              'My Orders',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'cartPage');
            },
          ),

          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.black,
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () async {
              // Lakukan proses logout
              bool success = await AuthService().logout();
              if (success) {
                // Jika logout berhasil, navigasikan ke halaman LoginPage
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  'loginPage',
                  (route) => false,
                );
              } else {
                // Jika logout gagal, tampilkan pesan kesalahan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Failed to log out. Please try again.'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
