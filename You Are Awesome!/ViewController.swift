//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Shane Barys on 1/13/20.
//  Copyright © 2020 Shane Barys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButton(_ sender: UIButton) {
        messageText.text = "You Are Awesome!"
    }
    
    @IBAction func secondMessage(_ sender: UIButton) {
        messageText.text = "Wowzers!"
    }
}

