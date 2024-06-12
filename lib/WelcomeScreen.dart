import 'dart:js';

import 'package:flutter/material.dart';
import 'package:nutritsia_last_version/CategoryView.dart';
import 'package:nutritsia_last_version/Profile.dart';
import 'package:nutritsia_last_version/WelcomeScreen.dart';
import 'package:nutritsia_last_version/Product_page.dart';


void main() {
  runNutritsiaApp();
}

void runNutritsiaApp() {
  runApp(NutritsiaApp());
}

class NutritsiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutritsia',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}

// WelcomeScreen Class (No Changes)
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildWelcomeScreenBody(context),
    );
  }

  Widget buildWelcomeScreenBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildWelcomeTitle(),
            buildWelcomeSubtitle(),
            buildUsernameField(),
            buildPasswordField(),
            buildLoginButton(),
            buildContinueButton(),
            buildForgotPasswordLink(context),
            buildSignupLink(context),
          ],
        ),
      ),
    );
  }

  Widget buildWelcomeTitle() {
    return Text(
      'NUTRITSIA',
      style: TextStyle(
        fontSize: 32,
        fontFamily: 'CopperplateGothic',
        color: Color.fromARGB(237, 66, 226, 66),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildWelcomeSubtitle() {
    return Column(
      children: [
        SizedBox(height: 8),
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(239, 35, 216, 35),
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }

  Widget buildUsernameField() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person, color: Color.fromARGB(239, 35, 216, 35)),
        labelText: 'Username',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget buildPasswordField() {
    return Column(
      children: [
        SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock, color: Color.fromARGB(239, 35, 216, 35)),
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
        SizedBox(height: 32),
      ],
    );
  }

  Widget buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        // Login action
      },
      child: Text('Login', style: TextStyle(color: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(239, 35, 216, 35),
        minimumSize: Size(double.infinity, 36),
      ),
    );
  }

  Widget buildContinueButton() {
  return Column(
    children: [
      SizedBox(height: 16),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context as BuildContext,
            MaterialPageRoute(builder: (context) => CategoryView()),
          );
        },
        child: Text('Continue without membership', style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(239, 35, 216, 35),
          minimumSize: Size(double.infinity, 36),
        ),
      ),
    ],
  );
}


  Widget buildForgotPasswordLink(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            // Forgot password action
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
            );
          },
          child: Text(
            'Forgot Password',
            style: TextStyle(
              color: Color.fromARGB(239, 35, 216, 35),
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  Widget buildSignupLink(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to sign up screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignupScreen()),
        );
      },
      child: Text(
        "Don't Have an Account?",
        style: TextStyle(
          color: Color.fromARGB(239, 35, 216, 35),
        ),
      ),
    );
  }
}

// Diğer Ekranlar (No Changes)
class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(239, 35, 216, 35),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('NUTRITSIA'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Please enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Please enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Please enter your password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Please select your language',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Please pick your allergens',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Sign up action
                },
                child: Text('Login', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(239, 35, 216, 35),
                  minimumSize: Size(double.infinity, 36),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Forgot Password'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Forgot Your Password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color.fromARGB(239, 35, 216, 35),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Please enter your email address. You will receive a link to create a new password via email.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(239, 35, 216, 35),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Color.fromARGB(239, 35, 216, 35)),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Password reset action
                },
                child: Text('Send', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(239, 35, 216, 35),
                  minimumSize: Size(double.infinity, 36),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
