// import 'package:flutter/material.dart';
// //import 'package:firebase_auth/firebase_auth.dart';
// import 'login_screen.dart'; // Navigate to login after signup
// import 'main_screen.dart'; // This should be the main screen after signup

// class SignupScreen extends StatefulWidget {
//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   //final _auth = FirebaseAuth.instance;
//   bool _isLoading = false;
//   String? _errorMessage;

//   // void _signup() async {
//   //   setState(() {
//   //     _isLoading = true;
//   //     _errorMessage = null;
//   //   });

//   //   try {
//   //     final userCredential = await _auth.createUserWithEmailAndPassword(
//   //       email: _emailController.text,
//   //       password: _passwordController.text,
//   //     );

//   //     Navigator.pushReplacement(
//   //       context,
//   //       MaterialPageRoute(builder: (context) => MainScreen()),
//   //     );
//   //   } catch (e) {
//   //     setState(() {
//   //       _isLoading = false;
//   //       _errorMessage = 'Error: ${e.toString()}';
//   //     });
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sign Up"),
//         backgroundColor: Color(0xFF2196F3),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             if (_errorMessage != null)
//               Text(
//                 _errorMessage!,
//                 style: TextStyle(color: Colors.red),
//                 textAlign: TextAlign.center,
//               ),
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(labelText: 'Password'),
//             ),
//             SizedBox(height: 20),
//             // ElevatedButton(
//             //   onPressed: _isLoading ? null : _signup,
//             //   child: _isLoading
//             //       ? CircularProgressIndicator(color: Colors.white)
//             //       : Text('Sign Up'),
//             //   style: ElevatedButton.styleFrom(
//             //     primary: Color(0xFF4CAF50), // Green color
//             //   ),
//             // ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Already have an account? "),
//                 GestureDetector(
//                   onTap: () {
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(builder: (context) => LoginScreen()),
//                     // );
//                   },
//                   child: Text(
//                     "Login",
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
