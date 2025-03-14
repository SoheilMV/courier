import 'package:courier/widgets/window_title_bar.dart';
import 'package:fluent_ui/fluent_ui.dart';

class NewPage extends StatelessWidget {
  const NewPage({
    super.key,
    required this.body,
    this.header,
    this.appBarColor,
  });

  final Widget body;
  final List<Widget>? header;
  final Color? appBarColor;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.all(0),
      header: Container(
        height: 35,
        decoration: BoxDecoration(
          color: appBarColor ?? Color(0xff202020),
        ),
        child: WindowTitleBar(
          children: header,
        ),
      ),
      content: body,
    );
  }
}
