//
//  AppDelegate.swift
//  MyApp
//
//  Created by Tom Baranes on 15/11/2019.
//

import Cocoa
import SwiftUI

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate {

    // MARK: Properties

    // swiftlint:disable:next implicitly_unwrapped_optional
    private var window: NSWindow!

}

// MARK: - NSApplicationDelegate

extension AppDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view. 
        window = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
                          styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
                          backing: .buffered,
                          defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}
