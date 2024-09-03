import 'package:flutter/material.dart';
import 'package:meals_app/model/restaurant.dart';

class RestaurantWidget extends StatefulWidget {
  const RestaurantWidget({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  State<RestaurantWidget> createState() => _RestaurantWidgetState();
}

class _RestaurantWidgetState extends State<RestaurantWidget> {
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
                    image: AssetImage(widget.restaurant.image),
                    fit: BoxFit.fill),
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
                widget.restaurant.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                widget.restaurant.des,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        // widget.restaurant.evaluation!.num = 1;
                        widget.restaurant.evaluation =
                            !widget.restaurant.evaluation;
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: widget.restaurant.evaluation == true
                          ? Colors.orange
                          : Colors.black,
                      size: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        // widget.restaurant.evaluation!.num = 1;
                        widget.restaurant.evaluation =
                            !widget.restaurant.evaluation;
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: widget.restaurant.evaluation == true
                          ? Colors.orange
                          : Colors.black,
                      size: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        // widget.restaurant.evaluation!.num = 1;
                        widget.restaurant.evaluation =
                            !widget.restaurant.evaluation;
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: widget.restaurant.evaluation == true
                          ? Colors.orange
                          : Colors.black,
                      size: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        // widget.restaurant.evaluation!.num = 1;
                        widget.restaurant.evaluation =
                            !widget.restaurant.evaluation;
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: widget.restaurant.evaluation == true
                          ? Colors.orange
                          : Colors.black,
                      size: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        // widget.restaurant.evaluation!.num = 1;
                        widget.restaurant.evaluation =
                            !widget.restaurant.evaluation;
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: widget.restaurant.evaluation == true
                          ? Colors.orange
                          : Colors.black,
                      size: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.restaurant.favurate = !widget.restaurant.favurate;
              });
            },
            icon: const Icon(
              Icons.favorite,
            ),
            color: widget.restaurant.favurate == true
                ? Colors.red[400]
                : Colors.grey[400],
          )
        ],
      )),
    );
  }
}
