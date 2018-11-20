//
//  StringValidationTests.swift
//  VBFrameworkTests
//
//  Created by Victor Baleeiro on 26/09/18.
//  Copyright © 2018 Going2. All rights reserved.
//

import Foundation
import XCTest

class StringValidationTests: XCTestCase {
    
    enum validEmails: String, CaseIterable {
        case a = "a@a.com"
        case b = "a@a.com.br"
        case c = "b@b.com"
        case d = "c@ccc.com"
    }
    
    enum invalidEmails: String, CaseIterable {
        case a = "a.a@"
        case b = "a@a@a"
        case c = "a@aaaa."
        case d = "@.c"
    }
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testValidVins() {
        
        var valids = 0
        for email in validEmails.allCases {
            if (email.rawValue.validateAsEmail()) {
                valids += 1
            }
        }
        
        XCTAssertTrue(valids == validEmails.allCases.count)
    }
    
    func testInvalidVins() {
        
        var invalids = 0
        for email in invalidEmails.allCases {
            if (!email.rawValue.validateAsEmail()) {
                invalids += 1
            }
        }
        
        XCTAssertTrue(invalids == invalidEmails.allCases.count)
    }
}
