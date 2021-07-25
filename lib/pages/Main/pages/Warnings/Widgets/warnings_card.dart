import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WarningsCard extends StatelessWidget {
  const WarningsCard(
      {Key? key,
      required this.content,
      required this.title,
      this.date,
      this.readed})
      : super(key: key);
  final String content;
  final String title;
  final DateTime? date;
  final bool? readed;

  get _day => this.date?.day.toString().padLeft(2, '0');
  get _month => this.date?.month.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    this.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Icon(
                  CupertinoIcons.circle_fill,
                  color: this.readed != true ? null : Color(0x00ffffff),
                )
              ],
            ),
            Container(
              child: Text(
                this.date != null ? '$_day/$_month/${this.date?.year}' : '-',
                // style: Theme.of(context).textTheme.headline6,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            Text(
              this.content,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
