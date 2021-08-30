import 'package:flutter/material.dart';
import 'package:apps_vin/theme.dart';

class ChatTile extends StatelessWidget {
  final String ImageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile(
      {required this.ImageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            ImageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleTextStyle.copyWith(
              color: blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
