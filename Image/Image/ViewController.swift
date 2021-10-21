//
//  ViewController.swift
//  Image
//
//  Created by Ahlam Ahlam on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var lebel: UILabel!
    
    @IBOutlet weak var BackEnable: UIButton!

    @IBOutlet weak var nextEnable: UIButton!
    
    let arrayOfImage = ["image1" , "image2", "image3" , "image4" , "image5", "image6" , "image7"]
    
   var arrayOfName = ["logo1" ,"logo2" ,"logo3" ,"logo4" , "logo5" , "logo6" , "logo6"]
    var value=0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BackEnable.isEnabled = false
           nextEnable.isEnabled = true
        
        
    }
    func doThings() {
        
        switch value {
            
        case 0: BackEnable.isEnabled = false
            
            nextEnable.isEnabled = true
            imageView.image = UIImage(named: arrayOfImage[0])
            
            lebel.text = String(arrayOfName[0])
            
        
        case   1:BackEnable.isEnabled = true
            nextEnable.isEnabled = true
            imageView.image=UIImage(named: arrayOfImage[1])
            lebel.text = (arrayOfName[1])
            
        case   2:BackEnable.isEnabled = true
            nextEnable.isEnabled = true
            imageView.image=UIImage(named: arrayOfImage[2])
            lebel.text = (arrayOfName[2])

        case   3:BackEnable.isEnabled = true
            nextEnable.isEnabled = true
            imageView.image=UIImage(named: arrayOfImage[3])
            lebel.text = (arrayOfName[3])

            
        case   4:BackEnable.isEnabled = true
            nextEnable.isEnabled = true
            imageView.image=UIImage(named: arrayOfImage[4])
            lebel.text = (arrayOfName[4])
            
        case   5:BackEnable.isEnabled = true
            nextEnable.isEnabled = true
            imageView.image=UIImage(named: arrayOfImage[5])
            lebel.text = (arrayOfName[5])

        case   6:BackEnable.isEnabled = true
            imageView.image=UIImage(named: arrayOfImage[6])
            lebel.text = (arrayOfName[6])

        default:
            value = 2
            BackEnable.isEnabled = true
                  nextEnable.isEnabled = false
            imageView.image =
            UIImage(named: arrayOfImage[0])
            lebel.text = String(arrayOfName[0])
            
        }
            
    }
    
    @IBAction func BackButtON(_ sender: UIButton) {
        value = value + 1
        doThings()
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        
        value = value + 1
    doThings()
        
    }
    
        }
   


