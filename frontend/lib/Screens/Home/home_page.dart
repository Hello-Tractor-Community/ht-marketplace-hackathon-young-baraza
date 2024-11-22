import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tractor/Common/Constants/app_background.dart';
import 'package:tractor/Common/Widgets/button.dart';
import 'package:tractor/Common/Widgets/text_field_widget.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController searchController;
  late int current;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    current = 0;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NewAppBackground(
        color: const Color(0xfff5f5f5),
        child: Scaffold(
          backgroundColor: const Color(0xfff5f5f5),
          appBar: AppBar(
            scrolledUnderElevation: 0,
            elevation: 0,
            backgroundColor: const Color(0xfff5f5f5),
            leading: const Icon(Iconsax.home),
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(Iconsax.notification),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                commonTextField(
                    isChat: false,
                    icon: Iconsax.search_normal,
                    controller: searchController,
                    text: "Search",
                    maxLines: 1,
                    onChange: (val) {},
                    isPassword: false,
                    obscure: false,
                    validator: () {}),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.72),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 200,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            color: const Color(0xfff5f5f5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DefaultTabController(
                                      length: 2,
                                      child: Container(
                                        constraints: const BoxConstraints(
                                            maxHeight: 200),
                                        child: Column(
                                          children: [
                                            const Expanded(
                                              child: TabBarView(children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/t5.png"),
                                                ),
                                                Image(
                                                  image: AssetImage(
                                                      'assets/t6.png'),
                                                )
                                              ]),
                                            ),
                                            ButtonsTabBar(
                                                borderWidth: 2.5,
                                                radius: 55,
                                                width: 35,
                                                height: 35,
                                                backgroundColor:
                                                    Colors.transparent,
                                                unselectedBackgroundColor:
                                                    Colors.transparent,
                                                borderColor: Colors.blue,
                                                unselectedBorderColor:
                                                    Colors.transparent,
                                                tabs: [
                                                  Tab(
                                                    child: Container(
                                                      width: 20,
                                                      height: 20,
                                                      decoration:
                                                          const BoxDecoration(
                                                              color: Colors.red,
                                                              shape: BoxShape
                                                                  .circle),
                                                    ),
                                                  ),
                                                  Tab(
                                                    child: Container(
                                                      width: 20,
                                                      height: 20,
                                                      decoration:
                                                          const BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              shape: BoxShape
                                                                  .circle),
                                                    ),
                                                  ),
                                                ]),
                                            const SizedBox(
                                              height: 20,
                                            )
                                          ],
                                        ),
                                      )),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "Furgusson",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Text("Read more"),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text('365 ksh'),
                                      commonbutton(
                                          name: 'cart',
                                          onTap: () {},
                                          width: 100,
                                          heignt: 40)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
