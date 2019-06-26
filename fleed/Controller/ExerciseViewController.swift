//
//  ExerciseViewController.swift
//  fleed
//
//  Created by Cedric Reinsch on 20.06.19.
//  Copyright © 2019 Cedric Reinsch. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
    // MARK: -
    private var exerciseIsStarted = false {
        didSet {
            startStopButton.setTitle(exerciseIsStarted ? "Stop" : "Start", for: .normal)
        }
    }
    
    // MARK: - Outlets
    @IBOutlet weak var startStopButton: UIButton!
    
    @IBAction func startOrStopExercise(_ sender: UIButton) {
        exerciseIsStarted = !exerciseIsStarted
        
        let gClef = Clef(withBaseTone: .g, .on(Line(1)))
        let fClef = Clef(withBaseTone: .f, .on(Line(3)))
        
        let staff = Staff(in: gClef, with: CommonTimeSignatures.commonTime)
        staff.appendBar()
        
        //staff.
        
    }
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
