// lib/home_page.dart
import 'package:flutter/material.dart';
import 'package:workshop_app/list_item.dart';
import 'package:workshop_app/stat_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Budget Tracker")),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  colors: [Color(0xFF09A37D), Color(0xFF057B5E)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33057458),
                    blurRadius: 26,
                    offset: Offset(0, 16),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "12,000 DA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      height: 1.05,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      StatContainer(
                        icon: Icons.arrow_downward_rounded,
                        text1: "Spent",
                        text2: "5,000 DA",
                        color: Color(0xFFFFD8D1),
                      ),
                      SizedBox(width: 12),
                      StatContainer(
                        icon: Icons.arrow_upward_rounded,
                        text1: "Income",
                        text2: "17,000 DA",
                        color: Color(0xFFD8FFE9),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  "Recent Transactions",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                TextButton(onPressed: () {}, child: const Text("See all")),
              ],
            ),
            const SizedBox(height: 4),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: const [
                  ListItem(
                    title: "Salary",
                    amount: "15,000 DA",
                    isIncome: true,
                  ),
                  ListItem(title: "Food", amount: "3,000 DA", isIncome: false),
                  ListItem(
                    title: "Transport",
                    amount: "1,000 DA",
                    isIncome: false,
                  ),
                  ListItem(
                    title: "Groceries",
                    amount: "1,000 DA",
                    isIncome: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF0A8F6A),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
