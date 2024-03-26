import 'package:book_train_ticket/utils/app_info_list.dart';
import 'package:book_train_ticket/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'mytrip.dart';

class PassengerConfrim extends StatefulWidget {
  const PassengerConfrim({super.key});

  @override
  State<PassengerConfrim> createState() => _PassengerConfrimState();
}

class _PassengerConfrimState extends State<PassengerConfrim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgColor,
      appBar: AppBar(
        leading: const BackButton(),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Passenger details"),
            Icon(Icons.home),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text("AA"),
                    Icon(Icons.arrow_forward),
                    Text("DD"),
                    Gap(225),
                    Text("Total Price:"),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Mar 26 2024"),
                    Text("2140 ETB"),
                  ],
                ),
                const Gap(10),
                Row(
                  children: [
                    const Icon(Icons.person_3,color: Colors.grey,),
                    const Gap(10),
                    Text(
                      "passengers Details",
                      style: styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: passengers.length,
            itemBuilder: (ctx, index) {
              return Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SizedBox(
                  child: ListTile(
                    title: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  passengers[index]['name'].toString(),
                                  style: styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                                ),
                                Text(passengers[index]['age'].toString(),
                                  style: styles.headLineStyle4
                                      .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            const InkWell(
                              child: Icon(
                                Icons.edit,
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const Gap(15),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const myTrip()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                    horizontal: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text(
                "Continue to payment ",
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
