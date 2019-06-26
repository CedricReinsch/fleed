//
//  Bar.swift
//  fleed
//
//  Created by Cedric Reinsch on 22.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

struct Bar {
    // MARK: - Properties
    var notesAndPauses = [Beatable]()
    private let staff: Staff
    
    // MARK: - Initializers
    init(on staff: Staff) {
        self.staff = staff
    }
    
    // MARK: - Methods
    mutating func append(noteOrPause: Beatable) {
        notesAndPauses.append(noteOrPause)
    }
    
    mutating func completeUsingPauses() {
        // TODO: implement
    }
}
