import 'package:demostorytech/common/signout_widget.dart';
import 'package:demostorytech/models/user_model.dart';
import 'package:demostorytech/services/database_service.dart';
import 'package:demostorytech/shared/loading.dart';
import 'package:demostorytech/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  SharedPreferences prefs;
  int _currentPage = 0;
  bool transform = false;
  int mode = -1;

  @override
  Widget build(BuildContext context) {
    final user1 = Provider.of<User>(context);
    final DatabaseService _db = DatabaseService(user: user1);
    return StreamBuilder(
      stream: _db.userData,
      builder: (context, snapshot){
        User user = snapshot.data;
        _db.user = user;
        if(snapshot.hasData){
          double height = MediaQuery.of(context).size.height;
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF004e92),
                          Color(0xFF000428),
                        ],
                      )
                  ),
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width - 20)/2.5, top: 60),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 60),
                        leading: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                        title:Text(
                          'Sign Out',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          return SignOut(context);
                        },
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    if(transform == true) {
                      setState(() {
                        transform = false;
                        _currentPage = -1;
                      });
                    }
                  },
                  child: Transform(
                    transform: (transform) ? (Matrix4.identity()..scale(0.5)) : (Matrix4.identity()..scale(1.0)),
                    alignment: Alignment.centerLeft,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          padding: const EdgeInsets.only(top: 50.0, left: 10.0, right:  10),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 60),
                  child: Align(
                    alignment: Alignment.topRight,
                    child:  Container(
                      decoration: profileIconDecoration,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            transform = !transform;
                          });
                        },
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                              user.photoUrl,
                              width: 50.0,
                              height: 50.0,
                            )
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        else{
          return Scaffold(
            body: Loading(),
          );
        }

      },
    );
  }
}
