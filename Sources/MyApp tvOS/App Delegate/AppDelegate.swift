//
//  AppDelegate.swift
//  MyApp
//
//  Created by Tom Baranes on 09/11/2019.
//

import UIKit
import SwiftUI

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

}

// MARK: - UIApplicationDelegate

extension AppDelegate {

    func application(_ application: UIApplication,
                     // swiftlint:disable:next discouraged_optional_collection
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Use a UIHostingController as window root view controller.
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIHostingController(rootView: contentView)
        self.window = window
        window.makeKeyAndVisible()
        return true
    }

}
