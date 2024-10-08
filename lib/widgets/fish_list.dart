import 'package:flutter/material.dart';
import 'package:koi_farm/utils/dimensions.dart';

class FishList extends StatelessWidget {
  // final FishModel fish;
  const FishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        children: [
          Container(
            height: 95,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/doitsuKarashigoi.jpg"))),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // fish.name
                "Nama Ikan",
                style: TextStyle(
                  fontSize: Dimensions.font16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_city,
                    color: Colors.black,
                    size: Dimensions.font16,
                  ),
                  Text("data")
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
