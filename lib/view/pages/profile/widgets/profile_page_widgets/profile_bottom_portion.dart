import 'package:flutter/material.dart';
import 'package:kanver_flutter_app/data/concretes/auth.dart';
import 'package:kanver_flutter_app/view/pages/authentication/login_page.dart';

class BottomPortion extends StatelessWidget {
  const BottomPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Ayarlar"),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          SizedBox(height: 5),
          InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {},
            child: const ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Kişisel Bilgiler"),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          SizedBox(height: 5),
          InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              Auth.signOut().whenComplete(() {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                    (route) => true);
              });
            },
            child: const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Çıkış"),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
