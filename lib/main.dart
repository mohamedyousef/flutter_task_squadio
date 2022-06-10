import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ibtikar_task/src/core/network/network.dart';
import 'package:ibtikar_task/src/features/people/presentation/view/people_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPathProvider.initPath();
  runApp(const ProviderScope(child: _Setup()));
}

class _Setup extends StatelessWidget {
  const _Setup({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Task',
      debugShowCheckedModeBanner: false,
      home: PeopleListScreen(),
    );
  }
}
