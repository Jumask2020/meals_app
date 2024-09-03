import 'package:flutter/material.dart';
import 'package:meals_app/view/meal_view.dart';
import 'package:meals_app/viewmodel/meals_vm.dart';
import 'package:meals_app/widget/restaurant_widget.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    MealsVM mealsVM = MealsVM();
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  child: Container(
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.red[400],
                child: Stack(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Positioned(
                        top: 20,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Mego Deal',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Get Mego deai here',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        right: -40,
                        bottom: -15,
                        child: Container(
                          // height: 200,
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image.png',
                                  ),
                                  fit: BoxFit.fill),
                              shape: BoxShape.circle,
                              color: Colors.amber),
                        )),
                  ],
                ),
              )),
              Positioned(
                top: MediaQuery.of(context).size.height / 4 - 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    height: 60,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.info,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Compining info',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Read more',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            color: Colors.grey[200],
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).size.height / 4 -
                80,
            width: MediaQuery.of(context).size.width,
            // color: Colors.white,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: mealsVM.fetchAllRestaurant().length,
              itemBuilder: (context, index) {
                var restaurants = mealsVM.fetchAllRestaurant();
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MealView(
                          restaurant: restaurants[index],
                        ),
                      ));
                    },
                    child: RestaurantWidget(restaurant: restaurants[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
