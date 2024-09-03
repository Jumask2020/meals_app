import 'package:flutter/material.dart';
import 'package:meals_app/model/meal.dart';


class MealWidget extends StatefulWidget {
  const MealWidget({super.key, required this.meal});
  final Meal meal;

  @override
  State<MealWidget> createState() => _RestaurantWidgetState();
}

class _RestaurantWidgetState extends State<MealWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
          child: Row(
        children: [
          Container(
            height: 90,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.meal.image), fit: BoxFit.fill),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.meal.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                widget.meal.des,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '${widget.meal.price}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${widget.meal.price}',
                    style:
                        const TextStyle(decoration: TextDecoration.lineThrough),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            width: 70,
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.meal.favurate = !widget.meal.favurate;
                  });
                },
                icon: const Icon(
                  Icons.favorite,
                ),
                color: widget.meal.favurate == true
                    ? Colors.red[400]
                    : Colors.grey[400],
              ),
              IconButton(
                  onPressed: () {
                    int i = 1;
                    i++;

                    widget.meal.price = widget.meal.price * i;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add))
            ],
          )
        ],
      )),
    );
  }
}
