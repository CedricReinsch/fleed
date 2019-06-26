//
//  Staff.swift
//  fleed
//
//  Created by Cedric Reinsch on 20.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

class Staff {
    // MARK: - Properties
    let clef: Clef
    var notesAndPauses = [Beatable]()
    var bars = [Bar]()
    let timeSignature: TimeSignature
    
    // MARK: - Initializers
    init(in clef: Clef, with timeSignature: TimeSignature) {
        self.clef = clef
        self.timeSignature = timeSignature
    }
    
    // MARK: - Methods
    func appendBar() -> Bar {
        return appendBar(timeSignature: timeSignature)
    }
    
    func appendBar(timeSignature: TimeSignature) -> Bar {
        // TODO: implement
        let bar = Bar(on: self)
        bars.append(bar)
        
        return bar
    }
    
    func append(noteOrPause: Beatable) {
        notesAndPauses.append(noteOrPause)
    }
}
