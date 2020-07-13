import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text('''Sample Stroy''', Colors.red),
      StoryItem.pageImage(NetworkImage(
          "https://www.logolynx.com/images/logolynx/2a/2a79565f852cdfe206a388ad919f0ba8.jpeg")),
      StoryItem.pageImage(NetworkImage(
          "https://www.logolynx.com/images/logolynx/2a/2a79565f852cdfe206a388ad919f0ba8.jpeg")),
    ];
    return Material(
      child: StoryView(
        storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
