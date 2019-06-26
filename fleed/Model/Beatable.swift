//
//  Beatable.swift
//  fleed
//
//  Created by Cedric Reinsch on 22.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

protocol Beatable {
    // MARK: - Properties
    var value: TimeValue { get }
    var dotted: Bool { get }
}
