//
//  ViewController.swift
//  Bushra Barakat Lab11
//
//  Created by Bushra Barakat on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var imageName: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
   var imageInt = 0
    var allImge1 = 0
    let allImage = ["pic1", "pic2", "pic3"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      // imageInt = 1
       imageName.text = ("\(imageInt)/2")
   
       
    }
            
    
            
    

    @IBAction func nextPic(_ sender: UIButton) {
        if allImge1 <= allImage.count  {
            if allImge1 == 2 {
               
              
                
            }else{
        
            
            allImge1 += 1
            viewImage.image = UIImage(named: allImage[allImge1])
            imageName.text = ("\(allImge1)/2")
            }
     
            
            
        }
        
    }
        
      

    @IBAction func backPic(_ sender: Any) {
        
       
            if allImge1 == 0 {
                
              
         
            }else{
        
          allImge1 -= 1
      

            viewImage.image = UIImage(named: allImage[allImge1])
        imageName.text = ("\(allImge1)/2")
        }
            
    }
  
    
    
        
}

        
    


    
