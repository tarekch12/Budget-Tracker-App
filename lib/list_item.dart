import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String amount;
  final bool isIncome;
  const ListItem({
    super.key,
    required this.title,
    required this.amount,
    required this.isIncome,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
        leading: Container(
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
            color: isIncome ? const Color(0xFFDFF7EA) : const Color(0xFFFFE7E1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            isIncome
                ? Icons.arrow_upward_rounded
                : Icons.arrow_downward_rounded,
            color: isIncome ? const Color(0xFF0A8F6A) : const Color(0xFFD14938),
            size: 20,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text(
          isIncome ? "Income" : "Expense",
          style: TextStyle(color: Colors.grey.shade600),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: isIncome ? const Color(0xFF0A8F6A) : const Color(0xFF1C2B25),
          ),
        ),
      ),
    );
  }
}
