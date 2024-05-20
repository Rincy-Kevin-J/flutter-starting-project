import 'package:fltprojeect/database/local_storage/using_shared_preference/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationShared extends StatefulWidget {
  const RegistrationShared({super.key});

  @override
  State<RegistrationShared> createState() => _RegistrationPgSharedPref();
}

class _RegistrationPgSharedPref extends State<RegistrationShared> {
  var formKey = GlobalKey<FormState>();
  var unameController = TextEditingController();
  var passController = TextEditingController();

  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text('Registration Page'),
      ),
      body: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'UserName'),
                  validator: (uname) {
                    if (uname!.isEmpty || !uname.contains('@')) {
                      return 'Invalid UserName(should have @)';
                    } else {
                      return null;
                    }
                  },
                  controller: unameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Password'),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return 'Password should be min 6 character';
                    } else {
                      return null;
                    }
                  },
                  controller: passController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {
                      var valid = formKey.currentState!.validate();
                      if (valid == true) {
                        storeData();

                        ///storing data
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Invalid Inputs')));
                      }
                    },
                    child: const Text('Register')),
              ),
            ],
          )),
    );
  }
  void storeData() async {
    String email = unameController.text;
    String password = passController.text;

    preferences = await SharedPreferences.getInstance();

    preferences.setString('UserName', email);
    preferences.setString('Pass', password);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginShared()));

    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPgSharedPref()));
  }
}
