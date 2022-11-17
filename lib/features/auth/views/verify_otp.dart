import 'package:chatapp/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

  static const String routeName = '/verifyOtp';

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      height: 56,
      width: 50,
      decoration: BoxDecoration(
        color: ColorConstants.primaryDark,
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: Theme.of(context).textTheme.titleLarge,
    );
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Verification Code',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                '${StringConstants.pleaseEnterOtp} +91 8949513014',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 62,
                child: Pinput(
                  length: 6,
                  defaultPinTheme: pinTheme,
                  focusedPinTheme: pinTheme.copyWith(
                    height: 62,
                    width: 56,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
