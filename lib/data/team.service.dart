import 'package:dio/dio.dart';

import 'team.api.model.dart';

class TeamService {
  Future<TeamApiModel> fetchTeams() async {
    final response =
        await Dio().get("https://www.mocky.io/v2/5de8d40d31000074006b1487");
        return TeamApiModel.fromJson(response.data);
  }
}
