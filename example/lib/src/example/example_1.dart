import 'package:flutter/material.dart';
import 'package:timeline_tile_plus/timeline_tile_plus.dart';

import '../showcase_timeline.dart';

const example1 = Example(
  name: 'The simplest tile',
  description: 'If the axis is vertical, it aligns default to the start, with '
      'a height of 100. The tile will always try to be as wide as it can get horizontally.\n\n'
      'If the axis is horizontal, It aligns default to the start, with a width'
      'of 100. The tile will always try to be as wide as it can get vertically.',
  code: '''
/// Vertical
return Container(
  color: Colors.white,
  child: TimelineTile(),
);
/// Horizontal
return Container(
  color: Colors.white,
  child: TimelineTile(
    axis: TimelineAxis.horizontal,
  ),
);''',
  childVertical: Example1Vertical(),
  childHorizontal: Example1Horizontal(),
);

class Example1Vertical extends StatelessWidget {
  const Example1Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Container(
            color: Colors.white,
            child: const TimelineTile(),
          ),
        ],
      ),
    );
  }
}

class Example1Horizontal extends StatelessWidget {
  const Example1Horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Row(
            children: [
              Container(
                constraints: const BoxConstraints(maxHeight: 100),
                color: Colors.white,
                child: const TimelineTile(
                  axis: TimelineAxis.horizontal,
                  alignment: TimelineAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
