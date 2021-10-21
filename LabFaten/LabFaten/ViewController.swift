//
//  ViewController.swift
//  LabFaten
//
//  Created by Faten Abdullh salem on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameAC: UILabel!
    @IBOutlet weak var thePic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
    }
    
    @IBAction func bouttons(_ sender: UIButton) {
        if sender.tag == 1{
thePic.image = UIImage(named: "Car1")
            nameAC.text = "care1"
            
        }
    else{
        thePic.image = UIImage(named: "Car2")
        nameAC.text = "care2"
        }
        }
        
        
        
    }
    



