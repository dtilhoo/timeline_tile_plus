import 'package:flutter/material.dart';
import 'package:timeline_tile_plus/timeline_tile_plus.dart';

import '../showcase_timeline.dart';

const example9 = Example(
  name: "Customize the tile's line.",
  description:
      'With LineStyle you can customize both beforeLine and afterLine.',
  code: '''
return Container(
  color: Colors.white,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      TimelineTile(
        alignment: TimelineAlign.center,
        isFirst: true,
        indicatorStyle: const IndicatorStyle(
          width: 20,
          color: Colors.purple,
        ),
        beforeLineStyle: const LineStyle(
          color: Colors.purple,
          thickness: 6,
        ),
        startChild: Container(
          constraints: const BoxConstraints(
            minHeight: 120,
          ),
          color: Colors.amberAccent,
        ),
      ),
      TimelineTile(
        alignment: TimelineAlign.center,
        beforeLineStyle: const LineStyle(
          color: Colors.purple,
          thickness: 6,
        ),
        afterLineStyle: const LineStyle(
          color: Colors.deepOrange,
          thickness: 6,
        ),
        indicatorStyle: const IndicatorStyle(
          width: 20,
          color: Colors.cyan,
        ),
      ),
      TimelineTile(
        alignment: TimelineAlign.center,
        isLast: true,
        beforeLineStyle: const LineStyle(
          color: Colors.deepOrange,
          thickness: 6,
        ),
        indicatorStyle: const IndicatorStyle(
          width: 20,
          color: Colors.red,
        ),
        endChild: Container(
          constraints: const BoxConstraints(
            minHeight: 80,
          ),
          color: Colors.lightGreenAccent,
        ),
      ),
    ],
  ),
);''',
  childVertical: Example9Vertical(),
  childHorizontal: Example9Horizontal(),
);

class Example9Vertical extends StatelessWidget {
  const Example9Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TimelineTile(
                  alignment: TimelineAlign.center,
                  isFirst: true,
                  indicatorStyle: const IndicatorStyle(
                    width: 20,
                    color: Colors.purple,
                  ),
                  beforeLineStyle: const LineStyle(
                    color: Colors.purple,
                    thickness: 6,
                  ),
                  startChild: Container(
                    constraints: const BoxConstraints(
                      minHeight: 120,
                    ),
                    color: Colors.amberAccent,
                  ),
                ),
                const TimelineTile(
                  alignment: TimelineAlign.center,
                  beforeLineStyle: LineStyle(
                    color: Colors.purple,
                    thickness: 6,
                  ),
                  afterLineStyle: LineStyle(
                    color: Colors.deepOrange,
                    thickness: 6,
                  ),
                  indicatorStyle: IndicatorStyle(
                    width: 20,
                    color: Colors.cyan,
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  isLast: true,
                  beforeLineStyle: const LineStyle(
                    color: Colors.deepOrange,
                    thickness: 6,
                  ),
                  indicatorStyle: const IndicatorStyle(
                    width: 20,
                    color: Colors.red,
                  ),
                  endChild: Container(
                    constraints: const BoxConstraints(
                      minHeight: 80,
                    ),
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Example9Horizontal extends StatelessWidget {
  const Example9Horizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Center(
            child: Container(
              constraints: const BoxConstraints(maxHeight: 160),
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  TimelineTile(
                    axis: TimelineAxis.horizontal,
                    alignment: TimelineAlign.center,
                    isFirst: true,
                    indicatorStyle: const IndicatorStyle(
                      height: 20,
                      color: Colors.purple,
                    ),
                    beforeLineStyle: const LineStyle(
                      color: Colors.purple,
                      thickness: 6,
                    ),
                    startChild: Container(
                      constraints: const BoxConstraints(
                        minWidth: 120,
                      ),
                      color: Colors.amberAccent,
                    ),
                  ),
                  const TimelineTile(
                    axis: TimelineAxis.horizontal,
                    alignment: TimelineAlign.center,
                    beforeLineStyle: LineStyle(
                      color: Colors.purple,
                      thickness: 6,
                    ),
                    afterLineStyle: LineStyle(
                      color: Colors.deepOrange,
                      thickness: 6,
                    ),
                    indicatorStyle: IndicatorStyle(
                      height: 20,
                      color: Colors.cyan,
                    ),
                  ),
                  TimelineTile(
                    axis: TimelineAxis.horizontal,
                    alignment: TimelineAlign.center,
                    isLast: true,
                    beforeLineStyle: const LineStyle(
                      color: Colors.deepOrange,
                      thickness: 6,
                    ),
                    indicatorStyle: const IndicatorStyle(
                      height: 20,
                      color: Colors.red,
                    ),
                    endChild: Container(
                      constraints: const BoxConstraints(
                        minWidth: 80,
                      ),
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
