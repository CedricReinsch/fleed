//
//  Clef.swift
//  fleed
//
//  Created by Cedric Reinsch on 20.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

struct Clef {
    // MARK: - Properties
    let baseTone: BaseTone
    let position: StaffPosition
    
    // MARK: - Initializers
    init(withBaseTone tone: BaseTone, _ position: StaffPosition) {
        self.baseTone = tone
        self.position = position
    }
    
    
}
