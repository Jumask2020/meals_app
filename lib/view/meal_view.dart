import 'package:flutter/material.dart';
import 'package:meals_app/model/restaurant.dart';
import 'package:meals_app/viewmodel/meals_vm.dart';
import 'package:meals_app/widget/meal_widget.dart';

class MealView extends StatelessWidget {
  const MealView({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    MealsVM mealsVM = MealsVM();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  child: Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    color: Colors.red[400],
                    image: DecorationImage(
                        image: AssetImage(restaurant.image), fit: BoxFit.fill)),
              )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 4 - 20,
                  child: Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ],
          ),
          ListTile(
            leading: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(restaurant.image), fit: BoxFit.fill)),
            ),
            title: Text(
              restaurant.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              restaurant.des,
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'only time ',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '9:30 am to 11:00 pm',
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.orange,
                ),
                Text(
                  '4.9 ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '200+ Reading',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_rounded,
                  size: 18,
                  color: Colors.orange,
                ),
                Text(
                  ' location',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 25),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 247, 191, 139),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mealsVM.fetchAllMeals().length,
              itemBuilder: (context, index) {
                var mealName = mealsVM.fetchAllMeals();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    mealName[index].name,
                    style: const TextStyle(color: Colors.brown),
                  )),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 4) -
                225,
            // color: Colors.amber,
            child: ListView.builder(
              itemCount: mealsVM.fetchAllMeals().length,
              itemBuilder: (context, index) {
                var meals = mealsVM.fetchAllMeals();
                return MealWidget(meal: meals[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
