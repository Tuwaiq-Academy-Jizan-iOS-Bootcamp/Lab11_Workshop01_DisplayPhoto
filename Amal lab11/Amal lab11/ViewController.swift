//
//  ViewController.swift
//  Amal lab11
//
//  Created by Amal Jeli on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewImage: UIImageView!
    
    @IBOutlet weak var Lable: UILabel!
    
    let ViImage  = ["KSA","USA","UAE"]
         var value = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
       
    

    @IBAction func BuNext(_ sender: Any) {
        if value == ViImage.count - 1 {
//اذا كان القيمه تساوي الكاونت -١ يستمر ويتزل للعمليه اللي بعدها " اهم حاجه مايطلع من Array " //
        value=0
        }else
        { value = value + 1
            ViewImage.image = UIImage(named: ViImage[value])
        Lable.text = String (ViImage[value])
            

        
    
    }}
    
    
    @IBAction func BuBack(_ sender: Any) {
        if value == 0
            
        {
           value = ViImage.count - 1

        }else
        { value = value - 1
            ViewImage.image = UIImage(named: ViImage[value])
        Lable.text = String (ViImage[value])
            

        
    
    }}
    
    
    
}

