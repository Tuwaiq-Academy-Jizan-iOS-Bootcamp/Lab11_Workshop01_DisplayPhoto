//
//  ViewController.swift
//  imagCuk
//
//  Created by Abdulrhman Abuhyyh on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageName: UILabel!
        
        @IBOutlet weak var imagesView: UIImageView!
        
        
        var myImages1 = ["ymc1","ymc2","ymc3","yam4"]
    var index = 0
        
        @IBAction func buttonOne(_ sender: Any) {
    
        if index < myImages1.count - 1 {
                index += 1
            } else {
                index = 0
            }
            imagesView.image = UIImage(named: myImages1[index] )
            imageName.text = myImages1[index]
            
        }
            
        @IBAction func buttonTow(_ sender: Any) {
            if index > 0 {
                index -= 1
            } else {
                index = myImages1.count - 1
            }
            imagesView.image = UIImage(named: myImages1[index] )
            imageName.text = myImages1[index]
        }
       
    override func viewDidLoad(){
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        
        imagesView.image = UIImage(named: myImages1[index])
    imageName.text = myImages1[index]
        
    }
}





