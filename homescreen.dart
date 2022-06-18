import 'package:flutter/material.dart';
import 'coffee_data.dart';
import 'package:coffeeui/widgets/coffee_item.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                child: Image.asset("assets/images/log.png"),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "House Signature",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xffe5e5e5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: Colors.black12,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/search.png"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 8,
                      ),
                      child: Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2.5 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (ctx, idx) => CoffeeItem(
                      index: idx,
                    ),
                    itemCount: coffee_list.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
          
