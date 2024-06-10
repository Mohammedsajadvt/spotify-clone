import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(right:8),
              child: InkWell(
                child: Container(
                  color: Colors.grey,
                  width: 150,
                ),
              ),
            );
          }),
    );
  }
}
