//
//  Pause.swift
//  fleed
//
//  Created by Cedric Reinsch on 22.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

class Pause : Beatable {
    // MARK: - Properties
    let value: TimeValue
    let dotted: Bool
    
    // MARK: - Initializers
    init(_ value: TimeValue, dotted: Bool = false) {
        self.value = value
        self.dotted = dotted
    }
}
