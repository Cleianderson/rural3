import 'package:flutter/material.dart';
import 'package:rural3/pages/Main/pages/Warnings/Widgets/warnings_card.dart';

final _contents = [
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque semper lacinia dapibus. Nulla facilisi. In hac habitasse platea dictumst. Nullam aliquam posuere dolor sit amet pulvinar. Integer bibendum convallis rutrum. Suspendisse diam est, dictum vitae porttitor id, ullamcorper a lacus. Proin ac risus et orci elementum aliquet. Nulla consectetur, ipsum vel pretium mollis, diam ante aliquam lacus, id varius dolor diam vitae felis.',
  'Donec bibendum nibh vitae massa blandit pretium. Morbi laoreet eget ipsum vitae sollicitudin. Quisque sit amet malesuada arcu. Maecenas malesuada bibendum erat. Phasellus vestibulum odio vitae rutrum bibendum. Maecenas fringilla vehicula augue, id condimentum magna pellentesque sed. Ut commodo sagittis mi, at commodo magna accumsan ut. Donec in cursus eros. Sed elementum ac mi id pellentesque. Vivamus in mi lectus. Mauris rhoncus dolor sit amet lacus laoreet, ac feugiat neque luctus. Curabitur non arcu sollicitudin, pretium massa et, hendrerit mi. Maecenas lacinia egestas augue quis euismod. Proin ac tortor ut massa auctor aliquet.',
  'Mauris varius non magna posuere fermentum. Curabitur in bibendum elit. Nulla vehicula tortor id ante dapibus, sed iaculis mauris sollicitudin. Morbi eget varius dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus in nunc eu pretium. In tellus felis, congue a ante id, dapibus cursus elit. Praesent efficitur id dolor sit amet dictum. Cras sed nisl vel elit fermentum tincidunt sit amet malesuada eros. Praesent pharetra sagittis arcu, sit amet vestibulum dolor sodales sed. Cras sit amet velit eu velit aliquet bibendum.',
  'Curabitur quis urna ut ipsum porta ultricies. Vestibulum interdum varius dolor vitae efficitur. Proin varius laoreet ullamcorper. Quisque vel vehicula ante, quis viverra felis. In elementum velit id dui porttitor iaculis. Nam vel imperdiet lacus, id pellentesque tellus. Curabitur vel dolor ullamcorper, convallis sapien a, porta libero. Donec interdum ultrices mi, id rutrum diam facilisis sit amet. Cras cursus vehicula sodales. Vivamus tincidunt augue eu pretium tincidunt. Quisque sagittis ultricies sagittis. Ut varius, ipsum vitae varius faucibus, purus lacus blandit quam, pulvinar sagittis tortor mauris ut quam. Proin cursus viverra magna non viverra. Mauris eu dui ut enim posuere maximus ut in eros. Proin aliquet eget mi pharetra rhoncus. Proin vitae elementum mauris.',
  'Mauris quis ornare libero, ac ultrices urna. Duis in vestibulum neque. In sed consequat nibh. Sed a erat at purus eleifend sollicitudin eu non est. Donec pretium, ligula a hendrerit scelerisque, nisl magna semper lacus, vitae commodo leo velit a velit. Nunc eget tortor sem. Maecenas fermentum sollicitudin turpis. Vestibulum pulvinar orci ut massa porttitor, eu viverra est finibus. Pellentesque eleifend vel dolor vitae iaculis. Suspendisse hendrerit mauris diam, sed elementum odio faucibus vel. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum egestas tristique placerat. Ut iaculis enim ac facilisis varius. Aenean euismod eros ut enim vestibulum, ac scelerisque sem accumsan.'
];

final _dates = [
  DateTime.now(),
  DateTime.now().subtract(Duration(days: 1000)),
  DateTime.now().subtract(Duration(days: 2000)),
  null,
  DateTime.now().subtract(Duration(days: 4000)),
];

final _titles = ['Lorem', 'Ipsum ', 'Dolor', 'Sit', 'Amet'];

class WarningsPage extends StatelessWidget {
  const WarningsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (cnt, inx) => WarningsCard(
          content: _contents[inx],
          title: _titles[inx],
          date: _dates[inx],
          readed: inx != 3,
        ),
      ),
    );
  }
}
