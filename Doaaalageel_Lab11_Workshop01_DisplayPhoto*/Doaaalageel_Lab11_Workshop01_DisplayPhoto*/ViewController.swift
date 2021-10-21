//
//  ViewController.swift
//  Doaaalageel_Lab11_Workshop01_DisplayPhoto*
//
//  Created by Dua'a ageel on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayphoto: UIImageView!
    
    @IBOutlet weak var photoname: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

var photoArray = ["Summer","Autumn","Winter","Spring"]
    var photoNumber = 0
    
    @IBAction func nextbutton(_ sender: UIButton) {
        if photoNumber <= photoArray.count {
            if photoNumber == 4 {
                photoNumber = 0 - 1
            }
        }
        
        
    }
    
    
    
}

