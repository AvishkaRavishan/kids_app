import 'package:flutter/material.dart';
import 'login.dart';

class ParentTeacherPage extends StatelessWidget {
  const ParentTeacherPage({Key? key, required this.backgroundColor}) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: backgroundColor,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'lib/assets/p_or_t.png',
                      width: 280,
                      height: 450,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Which Best Describe You ?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 105, 19, 145),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // logic for navigating to the parent login page
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(220, 164, 68, 215),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Parent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(
                            backgroundColor: backgroundColor,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(220, 164, 68, 215),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Teacher',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
