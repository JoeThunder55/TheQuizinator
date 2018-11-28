//
//  PlaySounds.swift
//  TheQuizinator
//
//  Created by Aaron on 11/19/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit
import AudioToolbox

class PlaySounds {
    
    init() {
        loadGameStartSound()
        playGameStartSound()
    }
    var gameSound: SystemSoundID = 0
    
    // MARK: - Helpers
    
    func loadGameStartSound() {
        let path = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
    
    
}


