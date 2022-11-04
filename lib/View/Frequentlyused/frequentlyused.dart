import 'package:atmo_comet_ad/Widget/CustomBackButtonSecondary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class   Frequentlyused extends StatelessWidget {
  const Frequentlyused({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:CustomBackButton(
            btnClr: Theme.of(context).primaryColor,
          )
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,bottom: 8),
            child: Text(
              "Frequently used",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 6, bottom: 6),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                        blurRadius: 3.0,
                        spreadRadius: 0.0,
                        offset: const Offset(
                          2.0,
                          2.0,
                        ), // shadow direction: bottom right
                      )
                    ],
                  ),
                  height: 140,
                  child: InkWell(
                    splashColor: Theme.of(context).primaryColor.withOpacity(.4),
                    onTap: (){

                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                  child: SvgPicture.asset(
                                      "assets/Recommondation/drone.svg")),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text("Type:",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5),
                                  Text("Group",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black))
                                ],
                              ),
                            ),
                            //Button Button
                            Flexible(
                              flex: 2,
                              child: Container(
                                  height: 40,
                                  width: 130,
                                  margin: const EdgeInsets.all(0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Book Now'),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // <-- Radius
                                      ),
                                      primary: Theme.of(context).primaryColor,
                                    ),
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                          height: 16,
                        ),
                        Row(
                          children: [
                            //Text LWG Cargo Drone
                            Flexible(
                                flex: 4,
                                child: Text(
                                  "LWG Cargo Drone",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.bold),
                                )),
                            const SizedBox(
                              width: 25,
                            ),
                            //Text Time
                            Flexible(
                                flex: 2,
                                child: Text('Time:',
                                    style:
                                    Theme.of(context).textTheme.headline5)),
                            const SizedBox(
                              width: 55,
                            ),
                            //Text Cost
                            Flexible(
                                flex: 2,
                                child: Text("Cost:",
                                    style:
                                    Theme.of(context).textTheme.headline5))
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                          height: 12,
                        ),
                        Row(
                          children: [
                            //text Load 100%
                            Flexible(
                              flex: 4,
                              child: Text("Load:100% Filled",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.w400)),
                            ),
                            const SizedBox(width: 40),
                            //Text 5hr
                            Flexible(
                              flex: 2,
                              child: Text('5Hrs',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(width: 60),
                            //Text 2100
                            Flexible(
                                flex: 3,
                                child: Text("₹ 21000",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
                // onTap: () {
                // Navigator.pushNamed(context,RoutHelper().orderforwardRoute);
                // },
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
