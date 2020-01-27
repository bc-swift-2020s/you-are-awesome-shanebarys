//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Shane Barys on 1/13/20.
//  Copyright © 2020 Shane Barys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageText: UILabel!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageText.text = ""
    }
  
    
    @IBAction func messageButton(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Slithery!",
                        "You Are Cool But This Message Is So Long My Code Needs To Change",
                        "You Are Amazing!"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageText.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber =  Int.random(in: 0...totalNumberOfImages-1)
    } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "Image\(imageNumber)")
}
}


