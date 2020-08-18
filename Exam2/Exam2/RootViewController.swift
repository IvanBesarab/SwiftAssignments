//
//  RootViewController.swift
//  Assignment2
//
//  Created by Ivan Besarab on 8/11/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    let logger: Logger = Logger.shared

    func print(_ items: Any...) {
        items.forEach { logger.log($0) }
    }

}

final class Logger {

    static let shared: Logger = Logger()

    var logText: String {
        if log.isEmpty {
            return log
        }
        return log.substring(to: log.count - 1)
    }

    private var log: String = .empty

    func clean() {
        log = .empty
    }

    func log(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        for (index, element) in items.enumerated() {
            let isLast = index == items.count - 1
            log.append("\(element)\(isLast ? .empty : terminator)")
            print(element, separator: separator, terminator: terminator)
        }
        log.append(terminator)
    }
}

private extension String {
    static var empty: String {
        return ""
    }

    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }

    func substring(to: Int) -> String {
        let toIndex = index(from: to)
        return String(self[..<toIndex])
    }
}
