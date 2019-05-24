import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            heightFactor: .4,
            alignment: Alignment.topCenter,
            child: Image.asset("assets/login_image.jpg", fit: BoxFit.cover),
          ),
          FractionallySizedBox(
              heightFactor: .7,
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 5.0),
                          blurRadius: 5.0)
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                        ),
                        TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueAccent)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFe5e5e5))),
                              suffixIcon: Icon(Icons.person),
                              hintText: "UserName"),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blueAccent, width: 2.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFFe5e5e5), width: 2.0)),
                              suffixIcon: Icon(Icons.person),
                              hintText: "Password"),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 50.0,
                            color: Color(0xFF00a651),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 18),
                          ),
                          onPressed: () {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black12)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/login_image.jpg"),
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                  color: Color(0xFFf8f8f8),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black12)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/login_image.jpg"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
