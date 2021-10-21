//
//  ViewController.swift
//  Label - 11
//
//  Created by Afrah Omar on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var groupImage = 0
    let array = [ "menu", "burger", "pasta", "pizza", "salad"]
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image.image = UIImage(named: array[groupImage])
    }

    @IBAction func left(_ sender: Any) {
        if groupImage == 0 {
            groupImage = 4
        }
        groupImage -= 1
        
    image.image = UIImage(named: array[groupImage])
                          print(groupImage)
    }
    
    @IBAction func next(_ sender: Any) {
    if groupImage <= array.count {
        if groupImage == 4 {
            groupImage = 0 - 1 }
        groupImage += 1
        }
    
    image.image = UIImage(named: array[groupImage])
                          print(groupImage)
    nameLabel.text =
    String(array[groupImage])
}

}

