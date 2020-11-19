import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FriendActivity extends StatelessWidget {
  const FriendActivity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(
        vertical: kDefaultPaddin / 2,
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
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: kDefaultPaddin / 2,
            ),
            child: GestureDetector(
              onTap: () => {
                // TODO Story Page
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(2.5),
                    height: kDefaultSize * 3,
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 7,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(1.0, 0.0),
                        colors: [
                          const Color(0xffFBA549),
                          const Color(0xffCF2C6B),
                          const Color(0xff5F5CC4),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(kDefaultSize / 1),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(kDefaultSize / 1.1),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(kDefaultSize / 1.2),
                        child: Image.network('https://i.ibb.co/q951535/2.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 12,
                        ),
                    children: [
                      const TextSpan(
                        text: 'Profile Name ',
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const TextSpan(
                        text: 'Liked your post or comented on',
                      ),
                    ],
                  ),
                ),
                const Text(
                  '7 minutes ago',
                  style: const TextStyle(
                    color: kGreyColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: kDefaultPaddin / 2,
            ),
            width: 80,
            height: 80,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: const Radius.circular(15),
                bottomRight: const Radius.circular(15),
              ),
              child: Image.network(
                'https://miro.medium.com/max/960/1*c94SpnDXD8imHLUW0fl-ng.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
