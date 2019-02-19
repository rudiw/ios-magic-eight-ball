//
//  ViewController.swift
//  Magic Eight Ball
//
//  Created by Rudi Wijaya on 19/02/19.
//  Copyright © 2019 Rudi Wijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ball: UIImageView!
    
    let answers: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"];
    
    var valueAnswer: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomAndUpdateBall();
    }
    
    @IBAction func btnAskPressed(_ sender: Any) {
        randomAndUpdateBall();
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if (motion == UIEvent.EventSubtype.motionShake) {
            randomAndUpdateBall();
        }
    }
    
    func randomAndUpdateBall() {
        valueAnswer = Int.random(in: 0...4);
        
        ball.image = UIImage(named: answers[valueAnswer])
    }


}

