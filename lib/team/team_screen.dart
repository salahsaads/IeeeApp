import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieee/Features/about/presntation/view/widget/Title.dart';
import 'package:ieee/core/AppColor/appcolor.dart';
import 'package:ieee/team/members_veiw.dart';

class TeamScreen extends StatelessWidget {
  TeamScreen({super.key, required this.title_add});
  bool title_add = false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        title_add
            ? const SliverToBoxAdapter(
                child: CustomTitle(
                title: "Our Team",
              ))
            : SliverToBoxAdapter(
                child: SizedBox(
                height: 60,
              )),
        SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, _) {
              return const MembersVeiw();
            }),
      ],
    );
  }
}
