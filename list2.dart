import 'package:flutter/material.dart';

class List2Widget extends StatelessWidget {
  const List2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 101,
      itemBuilder: (context, index) => const ListItemWidget(),
    );
  }
}

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({Key? key}) : super(key: key);

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Text(count.toString()),
          MaterialButton(
            child: const Text("+"),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          )
        ],
      ),
    );
  }
}
