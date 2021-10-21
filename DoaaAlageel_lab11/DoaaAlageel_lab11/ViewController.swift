//
//  ViewController.swift
//  DoaaAlageel_lab11
//
//  Created by Dua'a ageel on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayphoto: UIImageView!
    @IBOutlet weak var photoname: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

let photoArry = ["Summer","Autumn","winter","Spring"]
    var photoNumber = 0
    
    @IBAction func button1n(_ sender: UIButton) {
        
    if photoNumber <= photoArry.count {
        if photoNumber == 3 {
            photoNumber = 0 - 1
        
        }
        photoNumber += 1
        displayphoto.image = UIImage(named: photoArry[photoNumber])
        photoname.text = String(photoArry[photoNumber])
        
    }
    }
    
    @IBAction func prebutton(_ sender: UIButton) {
        if photoNumber == 0{
            photoNumber = 4
        }
        
        photoNumber -= 1
        displayphoto.image = UIImage(named: photoArry[photoNumber])
        photoname.text = String(photoArry[photoNumber])
    }
    
}

