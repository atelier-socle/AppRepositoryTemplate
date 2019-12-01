[![Lint Status](https://github.com/atelier-socle/AppRepositoryTemplate/workflows/SwiftLint/badge.svg)](https://github.com/atelier-socle/AppRepositoryTemplate/actions)
[![iOS Status](https://github.com/atelier-socle/AppRepositoryTemplate/workflows/MyApp%20iOS%20CI/badge.svg)](https://github.com/atelier-socle/AppRepositoryTemplate/actions)
[![tvOS Status](https://github.com/atelier-socle/AppRepositoryTemplate/workflows/MyApp%20tvOS%20CI/badge.svg)](https://github.com/atelier-socle/AppRepositoryTemplate/actions)
[![macOS Status](https://github.com/atelier-socle/AppRepositoryTemplate/workflows/MyApp%20macOS%20CI/badge.svg)](https://github.com/atelier-socle/AppRepositoryTemplate/actions)
[![watchOS Status](https://github.com/atelier-socle/AppRepositoryTemplate/workflows/MyApp%20watchOS%20CI/badge.svg)](https://github.com/atelier-socle/AppRepositoryTemplate/actions)

## AppRepositoryTemplate

`AppRepositoryTemplate` is the starting point of every application made by `Atelier Socle`. After a lot of doing and redoing project setup, configuration, ... we finally decided to make our own template to have a project / repository with our full basic configuration with just a few command lines. It includes:

- A script to make your repository **ready to work in less than 5 minutes**
- An auto-generated `xcodeproj` (thanks to [XcodeGen](https://github.com/yonaskolb/XcodeGen)) including: targets for `iOS`, `tvOS`, `macOS`, `watchOS`, and Notification {Service,Content) app extension.
- Basic environment setup including: `Debug`, `Release`, but also `Beta`
and `AdHoc` + their `xcconfig` files, and custom app icons
- [Firebase](https://firebase.google.com) configuration per environment ready to go (once you have updated the firebase's plists)
- A [SwiftGen](https://github.com/SwiftGen/SwiftGen) configuration** for the iOS target including `strings`, `images`, `storyboards`, and `segues`
- [SwiftLint ](https://github.com/realm/SwiftLint) ready to warn with its configuration file
- A [Gemfile](https://bundler.io) to easily handle gems dependencies
- A [Mintfile](https://github.com/yonaskolb/Mint) to easily handle handle swift tools
- All the basic documentation: [README](https://github.com/atelier-socle/AppRepositoryTemplate/blob/master/README_future.md), [CHANGELOG](https://github.com/atelier-socle/AppRepositoryTemplate/blob/master/CHANGELOG.md), ...
- [Github Actions](https://help.github.com/en/actions) setup to build, tests,
- A [fastlane](https://fastlane.tools) configuration for deployment
- ...

**Note:** Since it's just a template, it will just give basics setup, it's the developer work to finish the configuration before finalizing it's application.

## Usage

Have a full repository setup ready to be used in a few steps:

- Run `sh prepare_repository.sh {REPO_NAME} {NEW_REPO_PATH}`
- Start working on your app!

From here, you will have only to configure the project to match your need:

- Update the [xcconfig files](https://github.com/atelier-socle/AppRepositoryTemplate/tree/master/config) to put your bundle identifiers, versions, team id, ...
- Update the [fastlane configuration](https://github.com/atelier-socle/AppRepositoryTemplate/tree/master/fastlane) to match your apple id, team id, ...
- Update the [APNs script](https://github.com/atelier-socle/AppRepositoryTemplate/tree/master/scripts/APNs) by replacing the `AuthKey` and add your information
- Read the new [README](https://github.com/atelier-socle/AppRepositoryTemplate/blob/master/README_future.md) to start working on your project
- Remove targets that you won't need in the `XcodeGen` configuration: ``
- ...

## Contributions

Pull requests and issues are always welcome. Please open any issues and PRs for bugs, features, or documentation. Note that we keep the right to reject any PRs that we don't feel to integrate in future `Atelier Socle` project.

## License

`AppRepositoryTemplate` is licensed under the MIT license. See LICENSE for more info.
