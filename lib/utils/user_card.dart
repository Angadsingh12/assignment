import 'package:flutter/material.dart';
class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.username,
    required this.year,
  });

  final String? username;
  final String? year;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: 176,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/container.png'),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(25,35,7,0),
                child: CircleAvatar(
                  radius: 13,
                  child: Image(
                    image: AssetImage(
                      'assets/userimage.png',

                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 8),
                child: Text(
                  username!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right:20,top: 10),
            child: Text(
              year!,
              style: const TextStyle(
                fontSize: 8,
                color: Color(0xFFB1B1B1),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 60, 10),
            child: Text(
              '+ \$250',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}