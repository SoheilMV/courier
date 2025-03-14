import 'package:courier/widgets/window_title_bar.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        title: Text("Home Screen"),
        actions: WindowTitleBar(),
        height: 35,
        automaticallyImplyLeading: false,
      ),
      pane: NavigationPane(
          selected: currentPage,
          onChanged: (value) => setState(() {
                currentPage = value;
              }),
          displayMode: PaneDisplayMode.compact,
          size: NavigationPaneSize(
            openMaxWidth: 250,
          ),
          items: [
            PaneItem(
              icon: Icon(FluentIcons.home),
              title: Text("Home"),
              body: Center(
                child: FilledButton(
                  child: Text("Go to Test Screen"),
                  onPressed: () {
                    context.push("/test");
                  },
                ),
              ),
            ),
            PaneItemSeparator(),
            PaneItem(
              icon: Icon(FluentIcons.info),
              title: Text("About"),
              body: Center(
                child: Text("About Content"),
              ),
            ),
          ],
          footerItems: [
            PaneItem(
              icon: Icon(FluentIcons.settings),
              title: Text("Setting"),
              body: Center(
                child: Text("Setting Content"),
              ),
            ),
          ]),
    );
  }
}
