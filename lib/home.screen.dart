import 'package:basketball_app/data/team.service.dart';
import 'package:basketball_app/team.component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final service = TeamService();
    return FutureBuilder(
      future: service.fetchTeams(),
      builder: (context, snapData) {
        if (snapData.hasData) {
          return ListView.builder(
            itemCount: snapData.data?.data?.length,
            itemBuilder: (context, index) {
              return TeamComponent(
                snapData.data?.data![index].name ?? "",
                snapData.data?.data![index].city ?? "",
                snapData.data?.data![index].division ?? "",
                snapData.data?.data![index].abbreviation ?? "",
                snapData.data?.data![index].conference ?? "",
              );
            },
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
