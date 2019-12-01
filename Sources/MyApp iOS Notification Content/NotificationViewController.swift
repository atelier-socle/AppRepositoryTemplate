//
//  NotificationViewController.swift
//  MyApp iOS Notification Content
//
//  Created by Tom Baranes on 15/11/2019.
//

import UIKit
import UserNotifications
import UserNotificationsUI

final class NotificationViewController: UIViewController, UNNotificationContentExtension {

    // MARK: IBOutlets

    @IBOutlet private var label: UILabel?

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - UNNotificationContentExtension

extension NotificationViewController {

    func didReceive(_ notification: UNNotification) {
        self.label?.text = notification.request.content.body
    }

}
