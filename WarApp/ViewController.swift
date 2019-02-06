//
//  ViewController.swift
//  WarApp
//
//  Created by Игорь Бопп on 06/02/2019.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
}

