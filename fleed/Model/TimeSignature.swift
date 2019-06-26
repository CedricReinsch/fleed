//
//  Beat.swift
//  fleed
//
//  Created by Cedric Reinsch on 22.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

typealias TimeSignature = (Int, TimeValue)

struct CommonTimeSignatures {
    // MARK: Constants
    static let commonTime = TimeSignature(4, .quarter)
    static let cutCommonTime = TimeSignature(2, .half)
    static let threeQuarters = TimeSignature(3, .quarter)
    static let twoQuarters = TimeSignature(2, .quarter)
    static let sixEights = TimeSignature(6, .eight)
}
