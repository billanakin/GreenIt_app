import 'package:flutter/material.dart';
import 'package:greenit_app/components/loading/text_headline_loading.dart';
import 'package:greenit_app/components/loading/text_title_loading.dart';
import 'package:greenit_app/size_config.dart';

class SectionHeaderLoading extends StatelessWidget {
  const SectionHeaderLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextHeadlineLoading(),
        VerticalSpacing(of: 5),
        TextTitleLoading(width: 150),
      ],
    );
  }
}
