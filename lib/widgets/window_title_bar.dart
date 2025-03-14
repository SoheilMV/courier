import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';

class WindowTitleBar extends StatelessWidget {
  const WindowTitleBar({super.key, this.children});

  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: children ?? [],
        ),
        Expanded(child: MoveWindow()),
        SizedBox(
          height: double.infinity,
          child: MinimizeWindowButton(
            animate: true,
            colors: WindowButtonColors(
              iconNormal: Color(0xffFAFAFA),
              mouseOver: Color(0xff2D2D2D),
              mouseDown: Color(0xff292929),
            ),
          ),
        ),
        SizedBox(
          height: double.infinity,
          child: MaximizeWindowButton(
            animate: true,
            colors: WindowButtonColors(
              iconNormal: Color(0xffFAFAFA),
              mouseOver: Color(0xff2D2D2D),
              mouseDown: Color(0xff292929),
            ),
          ),
        ),
        SizedBox(
          height: double.infinity,
          child: CloseWindowButton(
            animate: true,
            colors: WindowButtonColors(
              iconNormal: Color(0xffFAFAFA),
              mouseOver: Color(0xffC42B1C),
              mouseDown: Color(0xff90101E),
            ),
          ),
        ),
      ],
    );
  }
}
