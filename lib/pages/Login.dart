//login with valid credentials
// want to create login screen with flutter
//requirements to login
//email-id
//password

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/l10n/localization.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // firebase
  // final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return (Localization.of(context)!.mail_needed);
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return (Localization.of(context)!.valid_mail);
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: _isObscure,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return (Localization.of(context)!.pw_required);
          }
          if (!regex.hasMatch(value)) {
            return (Localization.of(context)!.pw_not_valid);
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: Localization.of(context)!.pw,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ));

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: Colors.indigoAccent,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            // signIn(emailController.text, passwordController.text);
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.indigo[100],
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://wallpaper.dog/large/17072023.jpg",
                          fit: BoxFit.contain,
                          width: 400,
                        )),
                    SizedBox(height: 45),
                    emailField,
                    SizedBox(height: 25),
                    passwordField,
                    SizedBox(height: 35),
                    loginButton,
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(Localization.of(context)!.no_account),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationScreen()));
                            },
                            child: Text(
                              Localization.of(context)!.sign_up,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ])
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // login function
  // void signIn(String email, String password) async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       await _auth
  //           .signInWithEmailAndPassword(email: email, password: password)
  //           .then((uid) => {
  //                 Fluttertoast.showToast(msg: "Login Successful"),
  //                 Navigator.of(context).pushReplacement(
  //                     MaterialPageRoute(builder: (context) => MyHomePage())),
  //               });
  //     } on FirebaseAuthException catch (error) {
  //       switch (error.code) {
  //         case "invalid-email":
  //           errorMessage = "Your email address appears to be malformed.";

  //           break;
  //         case "wrong-password":
  //           errorMessage = "Your password is wrong.";
  //           break;
  //         case "user-not-found":
  //           errorMessage = "User with this email doesn't exist.";
  //           break;
  //         case "user-disabled":
  //           errorMessage = "User with this email has been disabled.";
  //           break;
  //         case "too-many-requests":
  //           errorMessage = "Too many requests";
  //           break;
  //         case "operation-not-allowed":
  //           errorMessage = "Signing in with Email and Password is not enabled.";
  //           break;
  //         default:
  //           errorMessage = "An undefined Error happened.";
  //       }
  //       Fluttertoast.showToast(msg: errorMessage!);
  //       print(error.code);
  //     }
  //   }
  // }
}
