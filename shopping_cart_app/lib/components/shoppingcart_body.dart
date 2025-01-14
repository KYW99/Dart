import 'package:flutter/material.dart';
import 'package:shopping_cart_app/constants.dart';

class ShoppingcartBody extends StatelessWidget {
  const ShoppingcartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      // 임시 ListView 사용
      child: Column(
        children: [
          _buildBodyNameAndPrice(),
          _buildBodyRatingAndReviewCount(),
          _buildBodyColorOptions(),
          _buildBodyButton()
        ],
      ),
    );
  } // end of build

  // 1. 이름과 가격
  Widget _buildBodyNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Urban Soft AL 10.0',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$699',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // 2. 별점 리뷰 카운트
  Widget _buildBodyRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    )),
          ),
          Spacer(),
          Text(
            'Review',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8),
          Text(
            '(26)',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent),
          ),
        ],
      ),
    );
  }

  Widget _buildBodyColorOptions() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Color Options'),
          SizedBox(height: 10),
          Row(
            children: [
              _buildColorOption(Colors.black),
              _buildColorOption(Colors.green),
              _buildColorOption(Colors.orange),
              _buildColorOption(Colors.grey),
              _buildColorOption(Colors.white),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildColorOption(Color mColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  // 5. 버튼 만들기
  Widget _buildBodyButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: kAccentColor,
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
} // end of body
