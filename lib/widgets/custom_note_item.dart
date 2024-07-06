import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 14),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              maxLines: 1,
              'Flutter tips',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16,),
              child: Text(
                'Build your career with Tharwat Samy',
                maxLines: 2,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            trailing: IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.centerRight,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26),
            child: Text(
              'May 21, 2016',
              maxLines: 1,
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
