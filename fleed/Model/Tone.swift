//
//  SignedTone.swift
//  fleed
//
//  Created by Cedric Reinsch on 23.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import Foundation

struct Tone {
    
    // MARK: - Properties
    let baseTone: BaseTone
    let sign: KeySignature?
    
    // MARK: - Initializers
    init(_ baseTone: BaseTone, _ sign: KeySignature? = nil) {
        self.baseTone = baseTone
        self.sign = sign
    }
    
    // MARK: - Methods
    func interval(to tone: Tone) -> Interval {
        let from = normalize(baseTone.rawValue + (sign == nil ? 0 : sign!.rawValue), into: Interval.allCases.count)
        let to = normalize(tone.baseTone.rawValue + (tone.sign == nil ? 0 : tone.sign!.rawValue), into: Interval.allCases.count)
        var difference: Int
        
        if to < from {
            difference = Interval.allCases.count - (from - to)
        }
        else {
            difference = to - from
        }
        
        return Interval(rawValue: difference)!
    }
    
    func interval(to tone: BaseTone, _ sign: KeySignature? = nil) -> Interval {
        return interval(to: Tone(tone, sign))
    }
}
