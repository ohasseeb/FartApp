//
//  ViewController.swift
//  funApp
//
//  Created by APPLE on 2/16/20.
//  Copyright © 2020 SafeWalk. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var YasamineFartsLabel: UILabel!
    
    @IBOutlet weak var SaboLabel: UILabel!
    
    @IBOutlet weak var DumbLabel: UILabel!
    
    var labelCounter = 0
    var audioPlayer: AVAudioPlayer?
    
    let systemSound: SystemSoundID = 1336 // Twitter Sound
    override func viewDidLoad() {
        super.viewDidLoad()
        SaboLabel.isHidden = true
        DumbLabel.isHidden = true
        YasamineFartsLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func FartTapped(_ sender: Any) {
        let senderTag = (sender as AnyObject).tag
        playSound(sound: "fart-01", type: "mp3")
        
        YasamineFartsLabel.isHidden = false 
        
    }
    @IBAction func FartButtonTapped(_ sender: Any) {
        // This is a comment
        // WE wil try to get sound to play after tapping a button but first
        labelCounter = labelCounter + 1
        AudioServicesPlaySystemSound(systemSound)
        //SaboLabel.isHidden = false // No longer hidden
        
        if(labelCounter % 2 == 0)
        {
            DumbLabel.isHidden = false
            SaboLabel.isHidden = true
        }
        else
        {
            DumbLabel.isHidden = true
            SaboLabel.isHidden = false
        }
        print("Button TApped")
    }
}

