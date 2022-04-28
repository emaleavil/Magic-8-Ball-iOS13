//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [
        #imageLiteral(resourceName: "ball3"),
        #imageLiteral(resourceName: "ball1"),
        #imageLiteral(resourceName: "ball2"),
        #imageLiteral(resourceName: "ball4"),
        #imageLiteral(resourceName: "ball5")
    ]

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        ballImage.image = ballArray.randomElement()
    }
    
    @IBAction func ask(_ sender: UIButton) {
        ballImage.animationImages = ballArray
        ballImage.animationDuration = 1
        ballImage.animationRepeatCount = 4
        ballImage.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.ballImage.image = self?.ballArray.randomElement()
        }
    }
}

