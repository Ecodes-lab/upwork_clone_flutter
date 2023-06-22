import 'package:flutter/material.dart';
import 'package:upwork_clone/managers/assets_manager.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.userImage),
        ),
        title: const Center(
          child: Text("Jobs"),
        ),
        actions: [],
      ),
    );
  }
}
