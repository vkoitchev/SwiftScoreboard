//
//  ViewController.swift
//  Scoreboard
//
//  Created by Vladimir Koychev on 11/02/2017.
//  Copyright © 2017 Vladimir Koychev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var homeTeamButtons: [UIButton]!
    @IBOutlet var awayTeamButtons: [UIButton]!
    @IBOutlet weak var homeTeamScoreDisplay: UILabel!
    @IBOutlet weak var awayTeamScoreDisplay: UILabel!
    
    private var homeScore = 0 {
        didSet {
            homeTeamScoreDisplay.text = String(homeScore)
        }
    }
    
    private var awayScore = 0 {
        didSet {
            awayTeamScoreDisplay.text = String(awayScore)
        }
    }
    
    private func add(score: Int, buttonPressed: UIButton)
    {
        if homeTeamButtons.contains(buttonPressed) {
            homeScore += score
        }
        else if awayTeamButtons.contains(buttonPressed)
        {
            awayScore += score
        }
    }
    
    @IBAction func tryScored(_ sender: UIButton) {
        add(score: 5, buttonPressed: sender)
    }

    @IBAction func conversionScored(_ sender: UIButton) {
        add(score: 2, buttonPressed: sender)
    }
    
    @IBAction func penaltyScored(_ sender: UIButton) {
        add(score: 3, buttonPressed: sender)
    }
    
    @IBAction func resetScore() {
        homeScore = 0
        awayScore = 0
    }
}

