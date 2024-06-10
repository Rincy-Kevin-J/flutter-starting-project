import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fltprojeect/database/cloud%20storage/phone_authentication/phn_home.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

// The main function, the entry point of the Flutter application
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures that the Flutter framework is properly initialized before using any plugins
  await Firebase.initializeApp(
    // Initializes the Firebase app with the provided options
    options: FirebaseOptions(
        apiKey: "AIzaSyDD6txlcv60Rt8od8T1OU8WYvRJZbSTcyE",
        // Your Firebase project's API key
        appId: "1:164331906833:android:f7e0cd5a516d27b07eceb0",
        // Your Firebase project's App ID
        messagingSenderId: "",
        // Your Firebase project's Messaging Sender ID
        projectId: "fir-project-9cf61" // Your Firebase project's ID
        ),
  );
  runApp(MyApp()); // Runs the Flutter app starting with MyApp widget
}

// MyApp is the root widget of the application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Phone Auth Example', // Title of the app
      home: LoginScreen(), // The first screen of the app
    );
  }
}

// LoginScreen is a stateful widget for the login screen
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// State class for LoginScreen
class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth =
      FirebaseAuth.instance; // FirebaseAuth instance for authentication
  final TextEditingController _phoneNumberController =
      TextEditingController(); // Controller for the phone number input field
  final TextEditingController _otpController =
      TextEditingController(); // Controller for the OTP input field

  String _verificationId = ""; // Variable to store the verification ID

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange, // App bar background color
        title: const Text('Login with OTP'), // Title of the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the body content
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Centering the content vertically
          children: [
            TextField(
              controller: _phoneNumberController,
              // Controller for phone number input
              keyboardType: TextInputType.phone,
              // Keyboard type set to phone
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                // Outline border for the text field
                labelText: 'Phone Number', // Label text for the text field
              ),
            ),
            const SizedBox(height: 16.0), // Spacing between elements
            ElevatedButton(
              onPressed: () async {
                await _verifyPhoneNumber(); // Call the phone number verification function
              },
              child: const Text('Send OTP'), // Button text
            ),
            const SizedBox(height: 16.0), // Spacing between elements
            PinFieldAutoFill(
              controller: _otpController, // Controller for OTP input
              decoration: UnderlineDecoration(
                colorBuilder: FixedColorBuilder(Colors.black.withOpacity(
                    0.3)), // Underline decoration for the OTP input field
              ),
              onCodeChanged:
                  (String? value) {}, // Callback for when the OTP code changes
            ),
            const SizedBox(height: 16.0), // Spacing between elements
            ElevatedButton(
              onPressed: () async {
                await _signInWithPhoneNumber(); // Call the sign-in function
              },
              child: const Text('Verify OTP'), // Button text
            ),
          ],
        ),
      ),
    );
  }

  // Function to verify the phone number
  Future<void> _verifyPhoneNumber() async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: _phoneNumberController.text,
        // Phone number to verify
        timeout: const Duration(seconds: 60),
        // Timeout duration
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(
              credential); // Automatically sign in if the verification is completed
          print(
              "Verification completed automatically: $credential"); // Print a message for successful verification
        },
        verificationFailed: (FirebaseAuthException e) {
          print(
              "Verification failed: $e"); // Print an error message if verification fails
        },
        codeSent: (String verificationId, int? resendToken) {
          print(
              "Code sent to ${_phoneNumberController.text}"); // Print a message when the code is sent
          _verificationId = verificationId; // Store the verification ID
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print(
              "Timeout reached: $verificationId"); // Print a message when the timeout is reached
        },
      );
    } catch (e) {
      print(
          "Error verifying phone number: $e"); // Print an error message if an exception occurs
    }
  }

  // Function to sign in with the phone number
  Future<void> _signInWithPhoneNumber() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId, // Use the stored verification ID
        smsCode: _otpController.text, // Use the OTP code from the input field
      );

      UserCredential userCredential = await _auth
          .signInWithCredential(credential); // Sign in with the credential

      print(
          "User signed in: ${userCredential.user?.uid}"); // Print a message with the user's UID

      // Navigate to the home screen with the user ID
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
              userId: userCredential
                  .user?.uid), // Pass the user ID to the home screen
        ),
      );
    } catch (e) {
      print(
          "Error signing in with OTP: $e"); // Print an error message if an exception occurs
    }
  }
}

/*
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: "AIzaSyDD6txlcv60Rt8od8T1OU8WYvRJZbSTcyE",
          appId: "1:164331906833:android:f7e0cd5a516d27b07eceb0",
          messagingSenderId: "",
          projectId: "fir-project-9cf61")
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Phone Auth Example',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  String _verificationId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Login with OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                await _verifyPhoneNumber();
              },
              child: const Text('Send OTP'),
            ),
            const SizedBox(height: 16.0),
            PinFieldAutoFill(
              controller: _otpController,
              decoration: UnderlineDecoration(
                colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
              ),
              onCodeChanged: (String? value) {},
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                await _signInWithPhoneNumber();
              },
              child: const Text('Verify OTP'),
            ),

          ],
        ),
      ),
    );
  }


  Future<void> _verifyPhoneNumber() async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: _phoneNumberController.text,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
          print("Verification completed automatically: $credential");
        },
        verificationFailed: (FirebaseAuthException e) {
          print("Verification failed: $e");
        },
        codeSent: (String verificationId, int? resendToken) {
          print("Code sent to ${_phoneNumberController.text}");
          _verificationId = verificationId;

          // Comment the following line to disable automatic code retrieval
          // _autoRetrieveSMSCode(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print("Timeout reached: $verificationId");
        },
      );
    } catch (e) {
      print("Error verifying phone number: $e");
    }
  }

// Uncomment this method if you want to enable automatic code retrieval
// void _autoRetrieveSMSCode(String verificationId) async {
//   final code = await SmsAutoFill().getAppSignature;
//   print("SMS Code retrieved automatically: $code");
//   _otpController.text = code;
// }



  Future<void> _signInWithPhoneNumber() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: _otpController.text,
      );

      UserCredential userCredential = await _auth.signInWithCredential(credential);

      print("User signed in: ${userCredential.user?.uid}");

      // Navigate to the new screen with the user ID
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(userId: userCredential.user?.uid),
        ),
      );
    } catch (e) {
      print("Error signing in with OTP: $e");
    }
  }
}

 */
