// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Storyboard Scenes

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
public enum StoryboardScene {
  public enum LaunchScreen: StoryboardType {
    public static let storyboardName = "LaunchScreen"

    public static let initialScene = InitialSceneType<UIKit.UIViewController>(storyboard: LaunchScreen.self)
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

// MARK: - Implementation Details

public protocol StoryboardType {
  static var storyboardName: String { get }
}

public extension StoryboardType {
  static var storyboard: UIStoryboard {
    let name = self.storyboardName
    return UIStoryboard(name: name, bundle: Bundle(for: BundleToken.self))
  }
}

public struct SceneType<T: UIViewController> {
  public let storyboard: StoryboardType.Type
  public let identifier: String

  public func instantiate() -> T {
    let identifier = self.identifier
    guard let controller = storyboard.storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
      fatalError("ViewController '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

public struct InitialSceneType<T: UIViewController> {
  public let storyboard: StoryboardType.Type

  public func instantiate() -> T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController() as? T else {
      fatalError("ViewController is not of the expected class \(T.self).")
    }
    return controller
  }
}

private final class BundleToken {}
