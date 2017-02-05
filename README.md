# Chrono

[![CI Status](http://img.shields.io/travis/larssondaniel/Chrono.svg?style=flat)](https://travis-ci.org/larssondaniel/Chrono)
[![Version](https://img.shields.io/cocoapods/v/Chrono.svg?style=flat)](http://cocoapods.org/pods/Chrono)
[![License](https://img.shields.io/cocoapods/l/Chrono.svg?style=flat)](http://cocoapods.org/pods/Chrono)
[![Platform](https://img.shields.io/cocoapods/p/Chrono.svg?style=flat)](http://cocoapods.org/pods/Chrono)

`Chrono` is a lightweight and easy-to-use timer for profiling processes on iOS.

## Usage

Create timers on the fly and stop them whenever you are finished with what is being profiled.

```objective-c
[Chrono start:@"someTask"];

// Perform task

[Chrono stop:@"someTask"];
```
console:
```
someTask finished in 135.25 ms
```

#### Multiple operations & operations split up into pieces:
```objective-c
[Chrono start:@"lightTask"];
[Chrono start:@"heavyTask"];

// Do work
[Chrono subOperation:@"firstPart" operation:@"heavyTask"];
// Do work
[Chrono subOperation:@"secondPart" operation:@"heavyTask"];
// Do work
[Chrono subOperation:@"thirdPart" operation:@"heavyTask"];

[Chrono stop:@"lightTask"];
[Chrono stop:@"heavyTask"];
```
console:
```
lightTask finished in 82.55 ms
---------------------------------------------
heavyTask finished in 5.90 s
heavyTask - firstPart took 1.14 s (19.32%)
heavyTask - secondPart took 1.02 s (17.28%)
heavyTask - thirdPart took 3.74 s (63.40%)
```

## Contributing
If you have feature requests or bug reports, feel free to help out by sending pull requests or by creating new issues.

## License
`Chrono` is distributed under the terms and conditions of the [MIT license](https://github.com/larssondaniel/Chrono/blob/master/LICENSE).

## Installation

Chrono is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Chrono"
```

## Author

larssondaniel, hello@larssondaniel.com

## License

Chrono is available under the MIT license. See the LICENSE file for more info.
