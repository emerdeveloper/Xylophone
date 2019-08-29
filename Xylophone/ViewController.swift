//
//  ViewController.swift
//  Xylophone
//
//  Created by Emerson Javid Gonzalez Morales on 8/27/19.
//  Copyright © 2019 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var xylophoneSoundEffect: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func notePressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            playSound(soundName: "note1");
        case 2:
            playSound(soundName: "note2");
        case 3:
            playSound(soundName: "note3");
        case 4:
            playSound(soundName: "note4");
        case 5:
            playSound(soundName: "note5");
        case 6:
            playSound(soundName: "note6");
        case 7:
            playSound(soundName: "note7");
        default:
            print("sound no exits")
        }
    }
    
    func playSound(soundName: String) {
        let path = Bundle.main.path(forResource: soundName, ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do {
            xylophoneSoundEffect = try AVAudioPlayer(contentsOf: url)
            xylophoneSoundEffect?.play()
        } catch {
            print("error play the sound:: \(error)")
        }
    }
}

