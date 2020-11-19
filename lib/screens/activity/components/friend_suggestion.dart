import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FriendSuggestion extends StatelessWidget {
  const FriendSuggestion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: kDefaultPaddin,
      ),
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                height: 115,
                margin: const EdgeInsets.only(
                  right: kDefaultPaddin,
                  bottom: kDefaultPaddin / 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kWhiteColor,
                  boxShadow: [
                    // Shadow only bottom
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 3.0,
                      offset: const Offset(0.0, 3.0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: kDefaultPaddin / 2,
                        horizontal: kDefaultPaddin / 1.2,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                          'https://i.ibb.co/dQKdPTK/1.jpg',
                          fit: BoxFit.cover,
                          width: 40,
                        ),
                      ),
                    ),
                    const FittedBox(
                      child: const Text('Name'),
                    ),
                    const FittedBox(
                      child: Text(
                        'Occupation',
                        style: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w100,
                          color: kGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                // Follow sugestion button
                bottom: 0,
                right: 10,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.person_add,
                      size: 15,
                      color: kWhiteColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
