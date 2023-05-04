import 'package:go_router/go_router.dart';
import '../../screens/todo_list_screen.dart';
import '../../screens/todo_new_screen.dart';

import '../../screens/test_focus_screen.dart';

final GoRouter routerCfg = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const TodoListScreen(),
      routes: [
        GoRoute(
          path: 'new',
          builder: (context, state) => const TodoNewScreen(),
        ),
        GoRoute(
          path: 'test',
          builder: (context, state) => const TestFocusScreen(),
        )
      ]
    )
  ]
);