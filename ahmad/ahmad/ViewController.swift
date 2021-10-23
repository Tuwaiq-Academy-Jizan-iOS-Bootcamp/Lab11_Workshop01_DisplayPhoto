//
//  ViewController.swift
//  ahmad
//
//  Created by Ahmad Barqi on 17/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageName: UILabel!
        
        @IBOutlet weak var images: UIImageView!
        
        var index: Int = 0
        var arrayImages1 = ["king","muhmmed","saudi"]
        
        
        @IBAction func buttonOne(_ sender: Any) {
        
        if index < arrayImages1.count - 1 {
                index += 1
            } else {
                index = 0
            }
            images.image = UIImage(named: arrayImages1[index] )
            imageName.text = arrayImages1[index]
        }
            
        @IBAction func buttonTow(_ sender: Any) {
            if index > 0 {
                index -= 1
            } else {
                index = arrayImages1.count - 1
            }
            images.image = UIImage(named: arrayImages1[index] )
            imageName.text = arrayImages1[index]
        }
}

