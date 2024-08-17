import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

Widget buildCategoryItem(
    {required String title, required int progress, required int total}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Row(
            children: [
              // TODO
              const Icon(
                FontAwesome.crown_solid,
                color: Colors.amber,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '$progress/$total',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Expanded(
            child: buildUnitCard(
                unitName: 'Unit 1',
                unlocked: true,

                // calculate progress ratio
                progressValue: progress / 100),
          ),
          const SizedBox(width: 16),
          Expanded(
              child: buildUnitCard(
                  unitName: 'Unit 1', unlocked: false, progressValue: 0.8)),
        ],
      ),
      const SizedBox(height: 24),
    ],
  );
}

// TODO write a comments
Widget buildUnitCard(
    {required String unitName,
    required bool unlocked,
    required double progressValue}) {
  return Container(
    height: 227,
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(15),
    ),
    child: unlocked
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                unitName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    const Icon(
                      FontAwesome.crown_solid,
                      color: Colors.amber,
                      size: 22,
                    ),

                    // To add space between elements
                    const SizedBox(width: 5),
                    Expanded(
                      child: LinearProgressIndicator(
                          value: progressValue,
                          color: Colors.amber,
                          backgroundColor: Colors.grey[400],
                          minHeight: 12,
                          // TODO find way to edit position
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.zero, right: Radius.circular(20))),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Center(
            child: Icon(Icons.lock, color: Colors.grey[700], size: 40),
          ),
  );
}
