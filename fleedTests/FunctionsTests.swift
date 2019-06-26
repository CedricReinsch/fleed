//
//  fleedTests.swift
//  fleedTests
//
//  Created by Cedric Reinsch on 25.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import XCTest
@testable import fleed

class FunctionTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNormalize() {
        let t1 = -3
        let t2 = 15
        let t3 = 8
        
        let nt1 = normalize(t1, into: 10)
        let nt2 = normalize(t2, into: 10)
        let nt3 = normalize(t3, into: 10)
        
        XCTAssertEqual(nt1, 7)
        XCTAssertEqual(nt2, 5)
        XCTAssertEqual(nt3, 8)
    }
}
