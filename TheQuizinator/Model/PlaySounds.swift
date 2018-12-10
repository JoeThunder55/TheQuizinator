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
    
//    init() {
//        loadGameStartSound()
//        playGameStartSound()
//    }
    
    static var gameSound: SystemSoundID = 0
    
    // MARK: - Helpers
    
    static func loadGameStartSound() {
        let path = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    static func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
    
    
}


