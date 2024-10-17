Note: this is the updated version of this package: https://pub.dev/packages/timeline_tile. The package has been migrated to the latest version of dart. With the new version, you can now animate the lines.
---

## What's new

Animate the lines:

```dart
TimelineTile(
    alignment: TimelineAlign.manual,
    lineXY: 0.1,
    enableAfterLineAnimation: true,
    enableBeforeLineAnimation: true,
    tweenBeginColor: Colors.blue,
    tweenEndColor: Colors.red,
    
    isFirst: index == 0,
    isLast: index == examples.length - 1,
    indicatorStyle: IndicatorStyle(
        width: 40,
        height: 40,
        indicator: _IndicatorExample(number: '${index + 1}'),
        drawGap: true,
    ),
    beforeLineStyle: LineStyle(
        color: Colors.white.withOpacity(0.2),
    ),
    endChild: GestureDetector(
        child: _RowExample(example: example),
        onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute<ShowcaseTimeline>(
            builder: (_) =>
                ShowcaseTimeline(example: example),
            ),
        );
        },
    ),
    );
```

<div style="text-align: center">
    <table>
        <tr>
            <td style="text-align: center">
                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/showcase_timeline.gif" width="200"/>
      </br><b>Timeline Showcase</b>
            </td>            
            <td style="text-align: center">
                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/football_timeline.gif" width="200"/>
      </br><b>Football Timeline</b>
            </td>
            <td style="text-align: center">
                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/activity_timeline.gif" width="200"/>
      </br><b>Activity Timeline</b>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/success_timeline.gif" width="200"/>
      </br><b>Success Timeline</b>
            </td>
            <td style="text-align: center">
                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/delivery_timeline.png" width="200"/>
  </br><b>Delivery Timeline</b>
            </td>
            <td style="text-align: center">
                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/weather_timeline.png" width="200"/>
  </br><b>Weather Timeline</b>
            </td>
        </tr>
				<tr>
            <td style="text-align: center">
                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/horizontal_timeline.gif" width="200"/>
      </br><b>Horizontal Timelines</b>
            </td>
        </tr>
    </table>
</div>


## Getting Started

A Timeline consists in a group of TimelineTiles. To build a tile you can simply use:

```dart
TimelineTile()
```

Which will build a default tile with a `vertical` axis, that aligns to the start, with a `height` of 100:

![Simple Timeline](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/simple_timeline.png)

The axis can be switched to render an `horizontal` tile, aligned to the start, with a default `width` of 100:

```dart
TimelineTile(axis: TimelineAxis.horizontal)
```

![Horizontal Simple Timeline](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_simple_timeline.png)

There are 4 types of alignment.

- `TimelineAlign.start`
- `TimelineAlign.end`
- `TimelineAlign.center`
- `TimelineAlign.manual`

The `start` and `end` alignment allows a child in their opposite sides. On the other hand, both `center` and `manual` allows children on both sides. For example, one tile with alignment to the center:

```dart
TimelineTile(
  alignment: TimelineAlign.center,
  endChild: Container(
    constraints: const BoxConstraints(
      minHeight: 120,
    ),
    color: Colors.lightGreenAccent,
  ),
  startChild: Container(
    color: Colors.amberAccent,
  ),
);
```

When providing children to the `vertical` tile, the height will be as minimum as possible, so you can control it with a height constraint (at least minHeight). This way the tile knows how to size it properly.

![Centered Tile](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/centered_tile_with_children.png)

If the `axis` is `horizontal`, the things are the opposite. The width will be as minimum as possible, so you can control it with a width constraint (at least minWidth). This way the tile knows how to size it properly.

```dart
TimelineTile(
  axis: TimelineAxis.horizontal,
  alignment: TimelineAlign.center,
  endChild: Container(
    constraints: const BoxConstraints(
      minWidth: 120,
    ),
    color: Colors.lightGreenAccent,
  ),
  startChild: Container(
    color: Colors.amberAccent,
  ),
);
```

![Horizontal Centered Tile](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_centered_tile_with_children.png)

### Manual aligning the idicator

With `TimelineAlign.manual` you can provide the `lineXY`, which allows you to specify a value from 0.0 to 1.0, that represents a size percentage. For example, aligning at 30% of the width or height:

```dart
TimelineTile(
  alignment: TimelineAlign.manual,
  lineXY: 0.3,
  endChild: Container(
    constraints: const BoxConstraints(
      minHeight: 120,
    ),
    color: Colors.lightGreenAccent,
  ),
  startChild: Container(
    color: Colors.amberAccent,
  ),
);
```

![Manual align indicator](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/manual_align_indicator.png)

```dart
TimelineTile(
  axis: TimelineAxis.horizontal,
  alignment: TimelineAlign.manual,
  lineXY: 0.3,
  endChild: Container(
    constraints: const BoxConstraints(
      minWidth: 120,
    ),
    color: Colors.lightGreenAccent,
  ),
  startChild: Container(
    color: Colors.amberAccent,
  ),
);
```

![Horizontal manual align indicator](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_manual_align_indicator.png)

### Is it the first or the last?

You can decide if a tile is the first os the last in a timeline. This way you control whether a `before` or `after` line must be rendered.

![First and last](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/first_and_last.png)

![Horizontal first and last](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_first_and_last.png)


### Start to make a timeline

You can finally start to combine some tiles to make a Timeline. The flag `hasIndicator` can control whether an indicator should or shouldn't be rendered.

![Timeline](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/start_to_make_timeline.png)

![Horizontal timeline](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_start_to_make_timeline.png)


### Customize the indicator as you wish

The default indicator is a circle, and you can customize it as you wish. With `IndicatorStyle` you can change the color, the X/Y position based on values from 0.0 to 1.0 or give it a padding. You must explicitly provide its width (vertical) or height (horizontal) though.

![Custom indicator](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/customize_indicator.png)

![Horizontal custom indicator](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_customize_indicator.png)


### Give an icon to the indicator

With `IconStyle` you can provide an Icon to be rendered inside the default indicator.

![Icon indicator](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/indicator_icon.png)

![Horizontal icon indicator](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_indicator_icon.png)


### Or provide your custom indicator

With the indicator parameter you can customize the tile with your own indicator. However, you must control its size through both width and height parameters.

![Custom indicator](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/custom_indicator.png)

![Horizontal custom indicator](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/horizontal_custom_indicator.gif)


### Customize the tile's line

With `LineStyle` you can customize both `beforeLine` and `afterLine`.

![Custom line](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/custom_line.png)

![Horizontal custom line](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_custom_line.png)


### Connect tiles with TimelineDivider

The `TimelineDivider` widget allows you to connect tiles that are aligned in different X/Y axis, when combined with `TimelineAlign.manual`.

![Timeline divider](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/timeline_divider.png)

![Timeline divider](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_timeline_divider.png)
