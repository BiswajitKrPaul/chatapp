import 'package:chatapp/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        StringConstants.welComeToBongChat,
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: ColorConstants.onPrimary),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: SvgPicture.asset(
                        AppAssets.loginPage,
                      ),
                    ),
                    TextField(
                      textInputAction: TextInputAction.done,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 18),
                      decoration: InputDecoration(
                        counterStyle: Theme.of(context).textTheme.bodyText1,
                        hintText: 'Enter mobile no.',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(
                              fontSize: 18,
                              color: ColorConstants.onPrimary.withOpacity(0.6),
                            ),
                        filled: true,
                        fillColor: ColorConstants.primaryDark,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: const Text('Login'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
