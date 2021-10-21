//
//  ViewController.swift
//  lab11
//
//  Created by grand ahmad on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var imageDice: UIImageView!
    
    var imageName = ""
    var buttonActions = 0
    var index: Int = 0
    var arrayphot1 = ["face1","face2","face3","face4"]
   
    
    @IBAction func nextButton(_ sender: Any) {
        if index == 3 {
            nameLabel.text = "the last"
        }else{
        if index < arrayphot1.count - 1 {
            index += 1
        }else {
            index = 0
        }
        imageDice.image = UIImage(named: arrayphot1[index] )
        nameLabel.text = arrayphot1[index]
    }
    }
    
    @IBAction func backButton(_ sender: Any) {
        if index == 0 {
            nameLabel.text = "the first"
        }else{
        if index > 0 {
            index -= 1
        }else {
            index = arrayphot1.count - 1
        }
        imageDice.image = UIImage(named: arrayphot1[index] )
        nameLabel.text = arrayphot1[index]
    }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageDice.image = UIImage(named: arrayphot1[index] )
        nameLabel.text = arrayphot1[index]

    }
}
