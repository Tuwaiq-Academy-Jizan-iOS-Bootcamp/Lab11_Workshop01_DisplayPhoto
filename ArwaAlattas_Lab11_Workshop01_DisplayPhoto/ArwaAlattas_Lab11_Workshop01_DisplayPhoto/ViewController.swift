//
//  ViewController.swift
//  ArwaAlattas_Lab11_Workshop01_DisplayPhoto
//
//  Created by Arwa Alattas on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var backEnable: UIButton!
    @IBOutlet weak var nextEnable: UIButton!
    let arrayOfImage  = ["image1","image2","image3"]
    var arrayOfname =
    ["white car","red car","black car"]
    var value = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func doThings (){
        switch value {
    case 0:  backEnable.isEnabled = false
            nextEnable.isEnabled = true
        imageView.image = UIImage(named:arrayOfImage[0])
             label.text = String(arrayOfname[0])
    case 1: backEnable.isEnabled = true
        imageView.image = UIImage(named:arrayOfImage[1])
             label.text = (arrayOfname[1])
    default:
             value = 2
            backEnable.isEnabled = true
                    nextEnable.isEnabled = false
                imageView.image = UIImage(named:arrayOfImage[2])
                     label.text = String(arrayOfname[2])
    }
    
    }
    
    @IBAction func backBu(_ sender: UIButton) {
        value = value - 1
        doThings()
        
        
    }
    @IBAction func nextBU(_ sender: UIButton) {
        value = value + 1
        doThings()
        
    }
    
    
}
