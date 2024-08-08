import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieee/Features/about/presntation/view/widget/Title.dart';
import 'package:ieee/core/AppColor/appcolor.dart';
import 'package:ieee/team/members_veiw.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child:CustomTitle(title: "Our Team",)),
        
          SliverList.builder(itemCount: 10,itemBuilder: (context , _) {
            return const MembersVeiw();
          }),
        
      ],
    );
  }
}