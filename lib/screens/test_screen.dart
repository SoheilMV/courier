import 'package:courier/widgets/new_page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NewPage(
      header: [
        SizedBox(
          height: double.infinity,
          width: 35,
          child: IconButton(
            icon: Icon(FluentIcons.back),
            onPressed: () {
              context.pop();
            },
          ),
        )
      ],
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
