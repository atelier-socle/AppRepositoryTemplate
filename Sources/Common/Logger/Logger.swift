//
//  Log.swift
//  MyApp
//
//  Created by Tom Baranes on 13/11/2019.
//

import Foundation
import SwiftyBeaver

public let log = SwiftyBeaver.self

public struct Logger {

    public init() { }

    public func enableLog() {
        let console = ConsoleDestination()
        log.addDestination(console)
    }

    public func disableLog() {
        log.removeAllDestinations()
    }

}
