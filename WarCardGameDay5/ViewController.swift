//
//  ViewController.swift
//  WarCardGameDay5
//
//  Created by Decagon on 06/09/2021.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var leftCardImageView: UIImageView!
  @IBOutlet weak var rightCardImageView: UIImageView!
  @IBOutlet weak var playerScoreLabel: UILabel!
  @IBOutlet weak var cpuCountLabel: UILabel!
  
  var leftScore = 0
  var rightscore = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func dealButton(_ sender: Any) {
    let leftRandomNumber = Int.random(in: 2...14)
    let rightRandomNumber = Int.random(in: 2...14)
    
    leftCardImageView.image = UIImage(named: "card\(leftRandomNumber)")
    rightCardImageView.image = UIImage(named: "card\(rightRandomNumber)")
    
    if leftRandomNumber > rightRandomNumber {
      leftScore += 1
      
    } else if rightRandomNumber > leftRandomNumber {
      rightscore += 1
      
    } else {
      leftScore += 1
      rightscore += 1
      
    }
    cpuCountLabel.text = String(rightscore)
    playerScoreLabel.text = String(leftScore)
    
  }
  
}

