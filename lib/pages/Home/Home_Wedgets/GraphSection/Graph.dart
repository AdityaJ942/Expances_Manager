import 'package:expances_management/Pages/Home/Home_Wedgets/GraphSection/Graph_Chart.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});
  final inr = 265;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 2, 10, 2),
                        child: Text(
                          "Expenses",
                          style: TextStyle(
                            fontSize: 22,
                            color: Color.fromRGBO(233, 225, 225, .8)
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Text(
                          "September-2023",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(233, 225, 225, .8)
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 12, 2),
                    child: Text(
                      '₹ $inr',
                      style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600 ,
                          color: Color.fromARGB(255, 160, 25, 184)
                      ),
                    ),
                  )
                ],
              ),
            ),
            const LineChartGraph(),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 56,
                color: const Color.fromARGB(255, 24, 23, 23),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 12, 12, 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "VIEW DETAILS",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 160, 25, 184),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        )
    );
  }
}