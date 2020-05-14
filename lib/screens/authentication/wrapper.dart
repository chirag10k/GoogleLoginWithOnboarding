import 'package:demostorytech/enums/connectivity_status.dart';
import 'package:demostorytech/models/user_model.dart';
import 'package:demostorytech/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../offline_screen.dart';
import 'authenticate_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    final connectionStatus = Provider.of<ConnectivityStatus>(context);
    //return either Home or Authenticate Screen
    if(connectionStatus == ConnectivityStatus.Offline)
      return OfflineScreen();
    else if(user != null && connectionStatus != ConnectivityStatus.Offline)
      return HomeScreen();
    else
      return AuthenticateScreen();

  }
}
