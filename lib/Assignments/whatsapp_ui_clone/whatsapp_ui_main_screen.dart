import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/watsapp_home_screen.dart';

class WhatsappUiMainScreen extends StatelessWidget {
  const WhatsappUiMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WhatsAppHomeScreen(),
    );
  }
}
