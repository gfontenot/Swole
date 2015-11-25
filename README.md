# Swole #

## Setup ##

Run `bin/setup`

This will:

 - Install the gem dependencies
 - Install the pod dependencies

## Testing ##

Run `bin/test`

This will run the tests from the command line, and pipe the result through
[XCPretty][].

[XCPretty]: https://github.com/supermarin/xcpretty

## Ideas

Swole is a super simple workout manager. It should be fast to add content, and
easy to view. We should be able to present the content in interesting ways.

### Terminology

 - Movements are single-movement exercises such as Bench Press, Back Squat,
   etc. Each instance of a specific movement has weight, sets, and reps.

```swift
struct Movement {
  let name: String
  let weight: Int
  let sets: Int
  let reps: Int
}
```

 - Metcons are multiple exercises strung together. They are scored differently
   depending on the type.

```swift
enum ScoreType {
  case Time
  case Distance
  case Reps
  case Rounds
  case Tabata
  case Total
  case NoScore
}

struct Metcon
  let name: String
  let type: ScoreType
  let score: String
  let detail: String
}
```

 - Workouts are any combination of Movements and Metcons. They have a
   Datetime, location, and notes


```swift
struct Workout {
  let movements: [Movement]
  let metcons: [Metcon]
  let recordedAt: NSDate
  let location: CLLocation // ?? I guess?
  let notes: String
}
```

## High level goals:

 - Easy import/export with Dropbox (Automatic backup?)
 - Graphing of progress
 - Estimated 1 rep maxes
 - Not shitty design
 - View data as a workout, or as individually recorded movements
 - Calendar and map views
