import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tractor/Common/Constants/app_background.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NewAppBackground(
        color: Color(0xfff5f5f5),
        child: Scaffold(
            backgroundColor: Color(0xfff5f5f5),
            appBar: AppBar(
              backgroundColor: Color(0xfff5f5f5),
              scrolledUnderElevation: 0,
              elevation: 0,
              title: const Text("Cart"),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Card(
                          color: const Color(0xfff5f5f5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/t4.png')))),
                                  const Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Ferguson"),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text('\$ 300'),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      increment();
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff004b23),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Iconsax.add,
                                        size: 12,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                  Text('$count'),
                                  GestureDetector(
                                    onTap: () {
                                      decrement();
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff004b23),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Iconsax.minus,
                                        size: 12,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}
