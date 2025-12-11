# timeline_tile_plus

An updated and enhanced version of [`timeline_tile`](https://pub.dev/packages/timeline_tile) with:

- Support for **animated timeline lines**
- Support for **dotted and dashed lines** via `LineStyle`
- Migration to the **latest Dart & Flutter** versions

> ⚠️ Note  
> This package is a maintained fork of `timeline_tile`.  
> The API is mostly compatible, with additional features added on top.

---

## ✨ What's new

### 1. Animate the lines

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
          builder: (_) => ShowcaseTimeline(example: example),
        ),
      );
    },
  ),
);
```

### 2. Dotted and dashed lines

`LineStyle` now supports:

- `dotted` with `dotRadius` and `dotSpacing`
- `isDashed` with `dashLength` and `dashSpacing`

```dart
TimelineTile(
  beforeLineStyle: const LineStyle(
    color: Colors.blue,
    thickness: 4,
    isDashed: true,
    dashLength: 6,
    dashSpacing: 4,
  ),
  afterLineStyle: const LineStyle(
    color: Colors.blue,
    dotted: true,
    dotRadius: 2,
    dotSpacing: 6,
  ),
);
```

---

## 📘 Getting Started

A timeline consists of a group of `TimelineTile`s. A basic tile:

```dart
TimelineTile()
```

This builds a vertical tile aligned to the start.

---

## Axis

```dart
TimelineTile(axis: TimelineAxis.horizontal)
```

---

## Alignment Types

- `TimelineAlign.start`
- `TimelineAlign.end`
- `TimelineAlign.center`
- `TimelineAlign.manual`

Examples included in full docs.

---

## Manual Indicator Alignment

```dart
TimelineTile(
  alignment: TimelineAlign.manual,
  lineXY: 0.3,
);
```

---

## First / Last Indicators

Control line rendering with:

```dart
isFirst: true,
isLast: true,
```

---

## Custom Indicators

Support for icons, widgets, or styled circles.

---

## Custom Lines

`LineStyle` supports:

- Thickness
- Color
- Dotted / dashed patterns

---

## TimelineDivider

Connect tiles across different alignments.

---

## License

Same as original `timeline_tile`.
