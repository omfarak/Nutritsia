import 'package:flutter/material.dart';
import 'package:nutritsia_last_version/CategoryView.dart';
import 'package:nutritsia_last_version/Profile.dart';
import 'package:nutritsia_last_version/WelcomeScreen.dart';
import 'package:nutritsia_last_version/Product_page.dart';


class ProfileMain extends StatelessWidget {
  const ProfileMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // APPBAR --------------------------------------
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            //fontFamily: ,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(int.parse("0xFFC1FF72")),
      ),

      // USER INFOSd
      body: ListView(
        // ListView kullandığım için dikeyde isteğe göre eleman sayısı arttırılabilir

        children: [
          // Burada ekranı dikeyde 5 parçaya böldüm. Sırasıyla;
          // isim-eposta olan kısım, gen. pref. yazan alan, dil seçeneklerinin
          // olduğu alan, info. yazan kısım, app hakkında vs seçeneklerin olduğu alan

          Row(
            children: [
              // yatayda 2 parçaya böldüm ve 6-1 flex verdim
              // sol tarafta bilgiler, sağ tarafta sadece düzenleme butonu var

              // user informations
              Expanded(
                flex: 6,
                child: Container(
                  height: 130, // Parça 1'in yüksekliği
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ömer Faruk Ak",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10), // İsteğe bağlı: Metinler arasına boşluk ekleyebilirsiniz
                      Text(
                        "farukakomer@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // edit info button
              Expanded(
                flex: 1,
                child: Container(
                  height: 130, // Parça 1'in yüksekliği
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      width: 50, // Yuvarlak düğmenin genişliği
                      height: 50, // Yuvarlak düğmenin yüksekliği
                      decoration: BoxDecoration(
                        color: Color(int.parse("0xFF0158C8")), // Düğmenin arka plan rengi
                        shape: BoxShape.circle, // Yuvarlak şekli belirledik
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.create_rounded,
                          color: Colors.white, // İkon rengi
                        ),
                        onPressed: () {
                          // Düğmeye basıldığında gerçekleşecek işlemler buraya gelecek
                          print("düzenle tuşu");
                        },
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Color(int.parse("0xFFEDEDED")),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 20), // sized box to add margin to left of the text
                  Text(
                    "General Preferences",
                    style: TextStyle(
                      fontSize: 24,
                      //color: Color(int.parse("0xFF888888")),
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 230,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // GestureDetector altında, dikeyde 3 parçaya böldüm

                  // My Allergens
                  GestureDetector(
                    onTap: () {
                      //Actions to be taken when clicking on my allgergens
                      print("My Allergens");
                    },
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        // yatay da 3 parçaya böldüm. Sol icon, Text, Sağ icon. Aralarında da SizedBox

                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.pan_tool, color: Colors.black),
                          SizedBox(width: 30), // İkon ile metin arasında boşluk bırakmak için
                          Text(
                            "My Allergens",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(), // Metin ile sağdaki ikon arasındaki boşluğu doldurmak için
                          Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          SizedBox(width: 30),
                        ],
                      ),
                    ),
                  ),

                  // Change Password
                  GestureDetector(
                    onTap: () {
                      // Actions to be taken when clicking on change password
                      print("Change Password");
                    },
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.key, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "Change Password",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          SizedBox(width: 30),
                        ],
                      ),
                    ),
                  ),

                  // Language
                  GestureDetector(
                    onTap: () {
                      // Actions to be taken when clicking on language
                      print("Language");
                    },
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.language, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "Language",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          SizedBox(width: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Color(int.parse("0xFFEDEDED")),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 20), // Metnin soluna boşluk eklemek için SizedBox
                  Text(
                    "Information",
                    style: TextStyle(
                      fontSize: 24,
                        //color: Color(int.parse("0xFF888888")),
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // GestureDetector altında, dikeyde 4 parçaya böldüm

                  //About App
                  GestureDetector(
                    onTap: () {
                      // About App tıklandığında yapılacak işlemler buraya gelir
                      print("About App");
                    },
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.phone_android, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "About App",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          SizedBox(width: 30),
                        ],
                      ),
                    ),
                  ),

                  // Terms & Conditions
                  GestureDetector(
                    onTap: () {
                      // Terms & Conditions tıklandığında yapılacak işlemler buraya gelir
                      print("Terms & Conditions");
                    },
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.description, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "Terms & Conditions",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          SizedBox(width: 30),
                        ],
                      ),
                    ),
                  ),

                  // Privacy Policy
                  GestureDetector(
                    onTap: () {
                      // Privacy Policy tıklandığında yapılacak işlemler buraya gelir
                      print("Privacy Policy");
                    },
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.policy, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          SizedBox(width: 30),
                        ],
                      ),
                    ),
                  ),

                  // Share This App
                  GestureDetector(
                    onTap: () {
                      // Share This App tıklandığında yapılacak işlemler buraya gelir
                      print("Share This App");
                    },
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.share, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "Share This App",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          SizedBox(width: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // GENERAL PREFERENCES

      // BOTTOM NAVBAR --------------------------------------
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //search
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          //camera
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Home",
          ),

          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
