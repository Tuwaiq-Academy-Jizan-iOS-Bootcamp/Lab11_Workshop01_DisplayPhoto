//
//  ViewController.swift
//  MaramFaqih_Lab11_Workshop01_DisplayPhoto
//
//  Created by maram f on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewPicture: UIImageView!
    
    @IBOutlet weak var labelOnview: UILabel!


    var imagesOnView = ["Jazan City","Baish City","Faifa City","Farasan Islands","Wadi Lajab"]
    var index = 0
   
    var firstClick = true


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewPicture.image=UIImage(named: imagesOnView[0])
     
        labelOnview.text =  imagesOnView[0]
       
       
      
    }
   
   
    @IBAction func Buttons(_ sender: UIButton) {
      
        if sender.tag == 1 {
            if firstClick == true{
                firstClick = false
                index = 0
            }
           
            if (index != (imagesOnView.count-1)){
                index += 1
                
                }else{
                    index = 0
                }
         
            print (index,imagesOnView[index],"next")
            viewPicture.image=UIImage(named: imagesOnView[index])
            labelOnview.text = imagesOnView[index]
                    
            }
        
            
        
    if (sender.tag == 2) {
        
       if firstClick == true{
           firstClick = false
           index = imagesOnView.count
        }
            if (index != 0){
                index -= 1
             }
        
               else{
                   index = imagesOnView.count-1
               }
        
        print (index,imagesOnView[index],"back")
        viewPicture.image=UIImage(named: imagesOnView[index])
        labelOnview.text = imagesOnView[index]
          }
       }
 
            
}

    



