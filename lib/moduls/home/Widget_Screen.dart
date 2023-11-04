import 'package:flutter/material.dart';
import 'package:project_route/api/ApiManager.dart';
import 'package:project_route/model/movieResponse/Result.dart';

import 'Home_Screen.dart';

class Widget_Screen extends StatelessWidget {
  Widget_Screen({super.key});


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.getPopularMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator(),);
        }
        else if (snapshot.hasError || snapshot.data?.status_code == 7) {
          return
            Center(
              child: Column(
                children: [
                  Text(snapshot.data?.status_message ??
                      snapshot.error.toString()),
                  ElevatedButton(onPressed: () {}, child: Text('Try Again'))
                ],
              ),
            );
        }
        return Home_Screen(Result());
      },
    );
  }
}
