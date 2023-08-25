import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            _buildCategoryItem("assets/images/sting.png", "Drinks"),
            _buildCategoryItem("assets/images/pizza.png", "Pizza"),
            _buildCategoryItem("assets/images/burgeer.jpg", "Burger"),
            _buildCategoryItem("assets/images/hot-dog.jpg", "Hot Dogs"),
            _buildCategoryItem("assets/images/chicken-wings.jpg", "Chicken Wings"),
            _buildCategoryItem("assets/images/desserts.jpg", "Desserts"),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String imagePath, String categoryName) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Image.asset(
              imagePath,
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(height: 5), // Add some space between image and text
          Text(
            categoryName,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
