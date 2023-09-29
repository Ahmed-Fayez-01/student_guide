import 'package:flutter/material.dart';
import 'package:student_guide/features/our_team/presentation/views/widgets/our_team_view_body.dart';

class OurTeamView extends StatelessWidget {
  const OurTeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: OurTeamViewBody(),
    ));
  }
}
