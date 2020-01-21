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
    }

    @IBAction func messageButton(_ sender: UIButton) {
        messageText.text = "You Are Awesome!"
        messageText.textColor = .blue
        messageText.textAlignment = .left
        imageView.image = UIImage(named: "Image0")
        print("messageButton pressed😀")
    }
    
    @IBAction func secondMessage(_ sender: UIButton) {
        messageText.text = "You Are Great!"
        messageText.textColor = .systemRed
        messageText.textAlignment = .right
        print("secondMessage pressed🥶")
        imageView.image = UIImage(named: "Image1")
    }
}

