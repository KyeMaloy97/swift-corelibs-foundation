// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
#if DEPLOYMENT_RUNTIME_OBJC || os(Linux)
    import Foundation
    import XCTest
#else
    import SwiftFoundation
    import SwiftXCTest
#endif

class TestDateIntervalFormatter : XCTestCase {
    
    static var allTests: [(String, (TestDateIntervalFormatter) -> () throws -> Void)] {
        return [
            ("test_string", test_string)
        ]
    }
    
    func test_string() {
        
        let d1 = Date(timeIntervalSince1970: 1456272000)
        let d2 = Date(timeIntervalSince1970: 31536000)
        
        let dIF = DateIntervalFormatter()
        let result = dIF.string(from: d1, to: d2)
        
        
        let x: String = "2/24/16, 12:00 AM \u{2013} 1/1/71, 1:00 AM"

        XCTAssertEqual(result.description, x.description)
        
    }
    
    
}
