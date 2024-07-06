import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 25, top: 28, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  maxLines: 1,
                  'Flutter tips',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                IconButton(
                  highlightColor: Colors.transparent,
                  constraints: BoxConstraints.tight(
                    const Size.fromRadius(8),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Flutter Tips body sadsadsadsadsad sadsadsadasdasd sasads sadsadasdsad sadsadsadasdsad sadsad asdasdasdasdsad',
              maxLines: 2,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'May 21, 2016',
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
