import 'package:diggin_v2/widgets/guide_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipListPage extends StatelessWidget {
  const ClipListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GuideText.logo(
          context,
          'diggin',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 32.0, bottom: 16.0, right: 8.0),
            child: GuideText.title(context, "Clips"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GuideText.sectionTitle(context, "Youtube"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GuideText.sectionTitle(context, "iTunes"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GuideText.subTitle(context, "SubTitle"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GuideText.body(context, "Body"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GuideText.caption(context, "Caption"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GuideText.textLink(context, "TextLink", () {}),
          ),
        ],
      ),
    );
  }
}
