import 'package:fltprojeect/utils/text-style.dart';
import 'package:flutter/material.dart';

class PageViewBuilderEx extends StatefulWidget {
  const PageViewBuilderEx({super.key});

  @override
  State<PageViewBuilderEx> createState() => _PageViewBuilderExState();
}

class _PageViewBuilderExState extends State<PageViewBuilderEx> {
  PageController controller = PageController();
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: controller,
            itemCount: 5,
            itemBuilder: (context, index) {
              return returnWidget(index);
            },
            onPageChanged: (index) {
              setState(() {
                currentpage = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  if (currentpage > 0) {
                    controller.previousPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInCirc);
                  }
                },
                child: const Text("previous")),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (currentpage < 4) {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInCirc);
                  }
                },
                child: const Text("Next"))
          ],
        )
      ],
    ));
  }

  Widget returnWidget(int index) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Page Index=$index",
          style: MyTextThemes.textheadingg,
        ),
      ),
    );
  }

