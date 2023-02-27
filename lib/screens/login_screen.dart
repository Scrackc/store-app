import 'package:flutter/material.dart';
import 'package:store_app/ui/input_decorations.dart';

class LoginScreen extends StatelessWidget {
  static String routerName = "login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const _LogoAndForm(),
                    // * Boton de registro
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Register!",
                            style: TextStyle(
                                color: Color.fromRGBO(119, 63, 223, 1),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LogoAndForm extends StatelessWidget {
  const _LogoAndForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _LogoBackground(),
        Text(
          "Welcome to Saifty!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Keep your data safe!",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 40,
        ),
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(243, 240, 238, 1)),
                  child: TextFormField(
                    // enabled: !loginForm.isLoading,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecorations.authInputDecoration(
                      hintText: 'john.doe@gmail.com',
                      labelText: 'Correo electrónico',
                      // suffixIcon: Icons.alternate_email,
                    ),
                    validator: (value) {
                      String pattern =
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                      RegExp regExp = RegExp(pattern);
                      return regExp.hasMatch(value ?? '')
                          ? null
                          : 'El correo no es valido';
                    },
                    // onChanged: (value) => loginForm.email = value,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(243, 240, 238, 1)),
                  child: TextFormField(
                    // enabled: !loginForm.isLoading,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecorations.authInputDecoration(
                      hintText: '********',
                      labelText: 'Contraseña',
                      // suffixIcon: Icons.alternate_email,
                    ),
                    validator: (value) {
                      String pattern =
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                      RegExp regExp = RegExp(pattern);
                      return regExp.hasMatch(value ?? '')
                          ? null
                          : 'El correo no es valido';
                    },
                    // onChanged: (value) => loginForm.email = value,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    backgroundColor: Color.fromRGBO(119, 63, 223, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot password?",
            style: TextStyle(
              color: Color.fromRGBO(119, 63, 223, 1),
            ),
          ),
          style: ButtonStyle(),
        ),
      ],
    );
  }
}

class _LogoBackground extends StatelessWidget {
  const _LogoBackground();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: size.width * 0.5 - 40,
          height: size.height * 0.2 + 40,
          child: const Icon(Icons.shield_outlined,
              size: 80, color: Color.fromRGBO(119, 63, 223, 1)),
        ),
        const _FirstBox()
      ],
    );
  }
}

class _FirstBox extends StatelessWidget {
  const _FirstBox();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.25,
      // color: Colors.grey.withOpacity(0.6),
      child: Stack(
        children: [
          Positioned(
            top: size.height * 0.15,
            left: size.width * 0.5 + 50,
            child: const _Bubble(25, 25),
          ),
          Positioned(
            top: size.height * 0.1,
            left: size.width * 0.5 - 70,
            child: const _Bubble(20, 20),
          ),
          Positioned(
            top: size.height * 0.06,
            left: size.width * 0.5 + 50,
            child: const _Bubble(15, 15),
          ),
        ],
      ),
    );
  }
}

class _Bubble extends StatelessWidget {
  final double width;
  final double height;
  const _Bubble(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(163, 135, 216, .3)),
    );
  }
}
