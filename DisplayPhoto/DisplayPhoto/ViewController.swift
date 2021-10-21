//
//  ViewController.swift
//  DisplayPhoto
//
//  Created by Yasir Hakami on 20/10/2021.
//

import UIKit

class ViewController: UIViewController {
                
    var imageLable = ["heven","story","skublue","mywife"]
    var imageArray = ["face1","face2","face3","face4"]
    var number = 0
    @IBOutlet weak var nameOfImage: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextImage: UIButton!
    @IBOutlet weak var backImage: UIButton!
                 
    override func viewDidLoad() {
        super.viewDidLoad()
        number = 1
        imageView.image = UIImage(named: imageArray[0])
        nameOfImage.text = imageLable[0]
        
    }
              
    @IBAction func buttonRight(_ sender: UIButton) {
        number += 1
        Display()
    }
    @IBAction func buttonLeft(_ sender: UIButton) {
        number -= 1
        Display()
    }
                  
    func Display() {
    switch number {
    case 1:
        imageView.image = UIImage(named: imageArray[0])
        nameOfImage.text = imageLable[0]
    case 2:
        imageView.image = UIImage(named: imageArray[1])
        nameOfImage.text = imageLable[1]
    case 3:
        imageView.image = UIImage(named: imageArray[2])
        nameOfImage.text = imageLable[2]
    case 4:
        imageView.image = UIImage(named: imageArray[3])
        nameOfImage.text = imageLable[3]
    case 5:
        number = 1
        imageView.image = UIImage(named: imageArray[0])
        nameOfImage.text = imageLable[0]
    case 0:
        number = 4
        imageView.image = UIImage(named: imageArray[3])
        nameOfImage.text = imageLable[3]
    default: number = 1
    }
    }



}
