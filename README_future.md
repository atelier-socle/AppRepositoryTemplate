[![Lint Status](https://github.com/atelier-socle/MyApp/workflows/SwiftLint/badge.svg)](https://github.com/atelier-socle/MyApp/actions)
[![iOS Status](https://github.com/atelier-socle/MyApp/workflows/MyApp%20iOS%20CI/badge.svg)](https://github.com/atelier-socle/MyApp/actions)
[![tvOS Status](https://github.com/atelier-socle/MyApp/workflows/MyApp%20tvOS%20CI/badge.svg)](https://github.com/atelier-socle/MyApp/actions)
[![macOS Status](https://github.com/atelier-socle/MyApp/workflows/MyApp%20macOS%20CI/badge.svg)](https://github.com/atelier-socle/MyApp/actions)
[![watchOS Status](https://github.com/atelier-socle/MyApp/workflows/MyApp%20watchOS%20CI/badge.svg)](https://github.com/atelier-socle/MyApp/actions)

## MyApp

Welcome to MyApp which is doing whatever!

## Getting started

First, you will need a few tools to start working on MyApp:

- `Xcode`: From the app store or wherever
- [Bundler](http://bundler.io): `gem install bundler`
- [Mint](https://github.com/yonaskolb/mint): `brew install mint`

Then run `make first_install` to have a valid project ready to be used.

### Makefile

- `make first install`: configure the project as a new one (mainly used for the CI)
- `make install` or `make`:
  - install last carthage dependency version
  - install gem dependencies
  - Generate an xcodeproj
- `make xcodeproj_gen`: generate a new new xcodeproj
- `make swiftgen`: reload swiftgen assets, ib, localizables, ...

## Documentation

- [Scripts](Documentations/Scripts.md)
- [Fastlane's README](fastlane/README.md)
