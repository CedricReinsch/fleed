//
//  Tone.swift
//  fleed
//
//  Created by Cedric Reinsch on 20.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

public func normalize(_ value: Int, into base: Int) -> Int {
    if value <= 0 {
        return base + (value % base)
    }
    
    return value % base
}
