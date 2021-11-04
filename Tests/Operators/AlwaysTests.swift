//
//  File.swift
//  
//
//  Created by Kin Wong on 4/11/21.
//

import XCTest
@testable import KineticTimerMac

final class AlwaysTests: XCTestCase {
    func testItEmitsASingleValue() {
        var output: [Int] = []
        _ = Always(1)
            .first()
            .print()
            .sink { output.append($0) }
        XCTAssertEqual(output, [1])
    }
}
