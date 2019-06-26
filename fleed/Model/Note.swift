//
//  Note.swift
//  fleed
//
//  Created by Cedric Reinsch on 20.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

class Note : Beatable {
    // MARK: - Properties
    let tone: BaseTone
    let sign: KeySignature?
    let value: TimeValue
    let dotted: Bool
    
    // MARK: - Initializers    
    init(_ tone: BaseTone, _ sign: KeySignature? = nil, with value: TimeValue, dotted: Bool = false) {
        self.tone = tone
        self.sign = sign
        self.value = value
        self.dotted = dotted
    }
}
