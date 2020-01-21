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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("view loaded 🤯")
        messageText.text = ""
    }
    
    @IBAction func messageButton(_ sender: UIButton) {

        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        
        if messageText.text == awesomeMessage {
            messageText.text = greatMessage
            messageText.textColor = .red
            imageView.image = UIImage(named: "Image1")
        } else if messageText.text == greatMessage {
            messageText.text = bombMessage
            messageText.textColor = .blue
            imageView.image = UIImage(named: "Image2")
        } else {
            messageText.text = awesomeMessage
            messageText.textColor = .cyan
            imageView.image = UIImage(named: "Image0")
        }
    }
    
}

