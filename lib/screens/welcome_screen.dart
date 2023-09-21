import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'second_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6DC),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PosterImage(),
              SizedBox(height: 20),
              TitleText(),
              SizedBox(height: 20),
              LoginButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class PosterImage extends StatelessWidget {
  const PosterImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/poster.svg',
      height: 300,
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '"Safeguarding India, One Click at a Time: Empowering Disaster Resilience"',
      style: GoogleFonts.lato(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class LoginButtons extends StatelessWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserLoginButton(),
        SizedBox(height: 10),
        OrganizationLoginButton(),
      ],
    );
  }
}

class UserLoginButton extends StatelessWidget {
  const UserLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
      },
      color: const Color(0xFF2D4990),
      textColor: Colors.white,
      minWidth: 150,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: const Text('User Log in'),
    );
  }
}

class OrganizationLoginButton extends StatelessWidget {
  const OrganizationLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
      },
      textColor: const Color(0xFF2D4990),
      minWidth: 150,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(color: Color(0xFF2D4990)),
      ),
      child: const Text('Organization Log in'),
    );
  }
}
