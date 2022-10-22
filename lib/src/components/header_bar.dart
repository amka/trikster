import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'avatar.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.goNamed('profile'),
          child: const Avatar(
            email: 'meamka@ya.ru',
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Andrey Maksimov',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Ink(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[200]!, width: 1.0),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                  splashRadius: 24,
                  onPressed: () {},
                  icon: Icon(Icons.calendar_month)),
            ),
            SizedBox(width: 8),
            Ink(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[200]!, width: 1.0),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                  splashRadius: 24,
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none)),
            ),
          ],
        )
      ],
    );
  }
}
