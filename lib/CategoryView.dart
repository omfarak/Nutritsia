import 'package:flutter/material.dart';
import 'package:nutritsia_last_version/CategoryView.dart';
import 'package:nutritsia_last_version/Profile.dart';
import 'package:nutritsia_last_version/WelcomeScreen.dart';
import 'package:nutritsia_last_version/Product_page.dart';


class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<String> dataList = [
    "Tadım Fındddık",
    "Çekirdek",
    "Kuruyemiş",
    "Cips",
    "Kurabiye",
    "Meyve Kurusu"
  ];
  List<String> category = [
    "Tadım Fındık",
    "Çekirdek",
    "Kuruyemiş",
    "Cips",
    "Kurabiye",
    "Meyve Kurusu"
  ];
  int startIndex = 0;
  int endIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nutrltsia"),
        backgroundColor: Color(0xFF7ED957),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = startIndex; i < endIndex; i++)
                //button styles
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(107, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Color(0xFF7ED957),
                  ),
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage(endpoint: '')),
                    );
                    
                  },
                 
                  child: Text(
                    category[i],
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (endIndex + 3 <= category.length) {
                      startIndex += 3;
                      endIndex += 3;
                    } else {
                      startIndex = 0;
                      endIndex = 3;
                    }
                  });
                },
                child: Container(
                  width: 37,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF7ED957),
                  ),
                  child: const Icon(
                    Icons.double_arrow,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30,
                  child: TextField(
                    style: const TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Color(0xFF7ED957)),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      prefixIconColor: Color(0xFF7ED957),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: ('Arama Yapmak İçin Tıklayın'),
                    ),
                  ),
                ),
              )
            ],
          ),
         
          Expanded(
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                    onTap: () {
                      // Tıklama işlevim
                      print('Tıklandı');
                    },
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 330,
                        decoration: BoxDecoration(
                          color: const Color(0xFF7ED957),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.network(
                                    'https://clipart-library.com/img1/1028489.png',
                                    width: 95.0,
                                    height: 99.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0, horizontal: 6.0),
                                    child: Text(
                                      dataList[index],
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 20,
                              right: 33,
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 241, 140, 7),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 2,
                                      horizontal: 15,
                                    ),
                                    child: Text(
                                      '10',
                                      style: TextStyle(
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        249,
                                        19,
                                        2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 2,
                                      horizontal: 15,
                                    ),
                                    child: Text(
                                      '40',
                                      style: TextStyle(
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 32),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 240, 0, 0),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 2,
                                      horizontal: 15,
                                    ),
                                    child: Text(
                                      'H.Calori',
                                      style: TextStyle(
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
