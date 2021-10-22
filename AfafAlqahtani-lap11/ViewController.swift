//
//  ViewController.swift
//  AfafAlqahtani-lap11
//
//  Created by Afaf Yahya on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
 
    var nameLabel = ["Alula","Moscoe","London","Paris","Madreed"]
    var index: Int = 0
    
    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var imageName: UILabel!
            
    @IBAction func nextButt(_ sender: Any) {
        if index <= nameLabel.count {
            if index == 4 {
                index = 0 - 1
            }
            index += 1
            
            cityImage.image = UIImage(named : nameLabel[index])
            imageName.text = String(nameLabel[index])
        }
        
    }
    @IBAction func bakcButt(_ sender: Any) {
    
        if index > 0 {
            index -= 1
        } else {
            index = nameLabel.count - 1
        }
        
            cityImage.image = UIImage(named : nameLabel[index])
            imageName.text = String(nameLabel[index])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }     // Do any additional setup after loading the view
}
