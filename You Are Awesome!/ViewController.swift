//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Shane Barys on 1/13/20.
//  Copyright © 2020 Shane Barys. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageText: UILabel!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    var totalNumberOfSounds = 6
    let totalNumberOfImages = 9
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageText.text = ""
    }
    func nonRepeatingRandom(originalNumber: Int, upperBound: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBound)
        } while originalNumber == newNumber
        return newNumber
    
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("🤬 ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
            
        } else {
            print("🤬 ERROR: Could not read data from file sound0")
        }
    }
    
    @IBAction func messageButton(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Slithery!",
                        "You Are Cool But This Message Is So Long My Code Needs To Change",
                        "You Are Amazing!"]
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBound: messages.count-1)
        messageText.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBound: totalNumberOfImages-1)
        imageView.image = UIImage(named: "Image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBound: totalNumberOfSounds-1)
        
        playSound(name: "sound\(soundNumber)")

    }
}


