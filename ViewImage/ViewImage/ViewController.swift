//
//  ViewController.swift
//  ViewImage
//
//  Created by Hanan Somily on 20/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewPhoto: UIImageView!
    
    @IBOutlet weak var namePhoto: UILabel!
    var photo =  ["deer1","flower","flower1","flower3","youCan"]
   var i = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func ternBack(_ sender: Any) {

    if i == 0 {
    i = photo.count - 1
    } else {
    i = i - 1
                       
viewPhoto.image = UIImage(named: photo[i])
namePhoto.text = String(photo[i])
                        }
        
    }

    @IBAction func ternNext(_ sender: Any) {
if i == photo.count - 1 {
 i = 0
 } else {
  i = i + 1 }
viewPhoto.image = UIImage(named: photo[i])
namePhoto.text = String(photo[i])

    
}

}
