import 'package:flutter/material.dart';
import 'package:result_dart_example/services/user_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserService userService = UserService();
  Widget body = const CircularProgressIndicator();

  @override
  void initState() {
    super.initState();
    loadUser();
  }

  loadUser() async {
    await Future.delayed(const Duration(seconds: 4));
    final result = await userService.getUser();
    result.fold((success) {
      body = Text("Deu certo ${success.name}");
    }, (failure) {
      body = Text("Deu certo ${failure.erro}");
    });
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: body),
    );
  }
}
