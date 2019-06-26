//
//  StaffLine.swift
//  fleed
//
//  Created by Cedric Reinsch on 21.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

enum StaffPosition {
    case on(_ line: Line)
    case between(_ line: Line, and: Line)
}
