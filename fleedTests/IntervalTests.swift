//
//  fleedTests.swift
//  fleedTests
//
//  Created by Cedric Reinsch on 23.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import XCTest
@testable import fleed

class IntervalTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIntervalWithinSameOctave() {
        let c = Tone(.c)
        let d = Tone(.d)
        
        XCTAssertEqual(c.interval(to: d), Interval.majorSecond)
        XCTAssertEqual(c.interval(to: .d, .sharp), Interval.minorThird)
    }
    
    func testIntervalExceedingOwnOctave() {
        let c = Tone(.c)
        let d = Tone(.d)
        
        XCTAssertEqual(d.interval(to: c), Interval.majorSeventh)
        
        let b = Tone(.b)
        
        XCTAssertEqual(b.interval(to: c), Interval.minorSecond)
        XCTAssertEqual(b.interval(to: .c, .flat), Interval.perfectUnison)
    }
    
    func testEnharmonicEquivalent() {
        let cSharp = Tone(.c, .sharp)
        let dFlat = Tone(.d, .flat)
        
        XCTAssertEqual(cSharp.interval(to: dFlat), Interval.perfectUnison)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
