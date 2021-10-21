//
//  ViewController.swift
//  Lab11
//
//  Created by layla hakami on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageViwe: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    
    
    @IBOutlet weak var backButton: UIButton!
    
    
    
    @IBOutlet weak var nextButton: UIButton!
    
  let rrayOfimage = ["image","image2","image3"]
    
var arrayOfimage = ["plant1","plant2","plant3"]
    
   var value = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        
    }
    func doThing (){
        
  switch value {
        case 0: backButton.isEnabled = false
            nextButton.isEnabled = true
            
            imageViwe.image = UIImage(named: arrayOfimage[0])
            label.text = String(arrayOfimage[0])
            
            
            
            
        case 1:
            backButton.isEnabled = false
            imageViwe.image = UIImage(named: arrayOfimage[1])
            
            label.text = (arrayOfimage[1])
            
            
        default:
            value = 2
            backButton.isEnabled = true
            nextButton.isEnabled = false
            imageViwe.image =
            UIImage(named: arrayOfimage[2])
            label.text = String(arrayOfimage[2])
            
            
        }
    }

    @IBAction func backBu(_ sender: UIButton) {
        
        value = value - 1
        doThing()
        
    }
    
    
    @IBAction func nextBu(_ sender: UIButton) {
        value = value + 1
        doThing()
    }
    
}

