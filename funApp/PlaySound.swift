//
//  PlaySound.swift
//  funApp
//
//  Created by APPLE on 2/16/20.
//  Copyright © 2020 SafeWalk. All rights reserved.
//

import Foundation
import AVFoundation

// MARK - AUDIO PLAYER


var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String)
{
    if let path = Bundle.main.path(forResource: sound, ofType: type)
    {
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }
        catch
        {
            print("could not find and play the sound file")
        }
    }
}
