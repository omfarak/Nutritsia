import 'package:flutter/material.dart';
import 'api_service.dart';
import 'package:nutritsia_last_version/CategoryView.dart';
import 'package:nutritsia_last_version/Profile.dart';
import 'package:nutritsia_last_version/WelcomeScreen.dart';
import 'package:nutritsia_last_version/Product_page.dart';


class ProductPage extends StatefulWidget {
  final String endpoint;

  ProductPage({required this.endpoint});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ApiService apiService = ApiService();
  late Future<Map<String, dynamic>> productDetails;

  @override
  void initState() {
    super.initState();
    productDetails = apiService.fetchProductDetails(widget.endpoint);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text('Product Details', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: productDetails,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data found'));
          }

          final data = snapshot.data!;
          final ingredients = data['ingredients'];
          final allergens = data['allergens'];
          final nutrition = data['nutrition'];
          final imageUrl = data['imageUrl'];

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(imageUrl, height: 200),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.lightGreenAccent,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ingredients', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        SizedBox(height: 10),
                        Text(
                          ingredients,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Allergen list', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: allergens.map<Widget>((allergen) {
                      return allergenChip(allergen['name'], allergen['isSafe'] ? Colors.green : Colors.red);
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Text('Nutrition info', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: nutrition.entries.map<Widget>((entry) {
                      return nutritionInfo(entry.key, entry.value.toString(), Colors.orange);
                    }).toList(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.black,
      ),
    );
  }

  Widget allergenChip(String label, Color color) {
    return Chip(
      label: Text(label, style: TextStyle(color: Colors.white)),
      backgroundColor: color,
    );
  }

  Widget nutritionInfo(String label, String value, Color color) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(value, style: TextStyle(color: Colors.white, fontSize: 16)),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
