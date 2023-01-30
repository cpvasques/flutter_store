import 'package:dw9_delivery_app/app/core/config/env/env.dart';
import 'package:dw9_delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Column(
        children: [
          Container(),
          DeliveryButton(
            // label: 'Teste Label',
            label: Env.instance['backend_base_url'] ?? '',
            onPressed: () {},
            width: 200,
            height: 60,
          ),
          Container(
            color: Colors.red,
            width: context.percentWidth(.5),
            height: 200,
          ),
          Text(MediaQuery.of(context).size.width.toString()),
          Text(context.screenWidth.toString()),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Teste'),
          )
        ],
      ),
    );
  }
}
