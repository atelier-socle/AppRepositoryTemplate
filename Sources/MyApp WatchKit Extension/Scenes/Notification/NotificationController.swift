//
//  NotificationController.swift
//  MyApp Extension
//
//  Created by Tom Baranes on 15/11/2019.
//

import WatchKit
import SwiftUI
import UserNotifications

final class NotificationController: WKUserNotificationHostingController<NotificationView> {

    override var body: NotificationView {
        NotificationView()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func didReceive(_ notification: UNNotification) {
        // This method is called when a notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
    }
}
