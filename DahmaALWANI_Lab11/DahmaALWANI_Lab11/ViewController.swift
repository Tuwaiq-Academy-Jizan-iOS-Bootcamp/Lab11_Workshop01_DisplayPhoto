//
//  ViewController.swift
//  DahmaALWANI_Lab11
//
//  Created by dahma alwani on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    //outlet for view image and label
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad()
         {
    super.viewDidLoad()
    photo.image = UIImage(named: imageName[0] )
    name.text = imageName[0]
         }
        //The Name Of My Image
    var imageName = ["Alola city","faifa mountain","clock tower","tuwaiq mountain"]
    // the variable
    var index: Int = 0
    // button to move image next
    @IBAction func nextButton(_ sender: UIButton) {
        if index < imageName.count - 1 {
            index += 1
            }else{
            index = 0
            }
    photo.image = UIImage(named: imageName [index])
    name.text = String( imageName [index])
                  }
    //button to move image to back
    @IBAction func backButton(_ sender: UIButton) {
        if index > 0 {
            index -= 1
            }else{
            index = imageName.count - 1
            }
    photo.image = UIImage(named: imageName [index])
        name.text = String( imageName [index])
        }
    }
