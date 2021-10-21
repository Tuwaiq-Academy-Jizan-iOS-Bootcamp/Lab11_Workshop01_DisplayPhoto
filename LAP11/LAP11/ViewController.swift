//
//  ViewController.swift
//  LAP11
//
//  Created by زهور حسين on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var imageLable = [0,1,2,3,4,5]
      var imageArray = ["picture1","picture2","picture3","picture4","picture5"]
      var number = 0
      @IBOutlet weak var nameOfImage: UILabel!
      @IBOutlet weak var imageView: UIImageView!
      @IBOutlet weak var nextImage: UIButton!
      @IBOutlet weak var backImage: UIButton!
 
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        number = 1
            imageView.image = UIImage(named: imageArray[0])
            nameOfImage.text = String(imageLable[0])
            backImage.isEnabled = false
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
              if number >= 6 {
                  nameOfImage.text = "last"
              }else{
          switch number {
          case 1: backImage.isEnabled = false
            imageView.image = UIImage(named: imageArray[0])
              nameOfImage.text = String(imageLable[0])
          case 2:backImage.isEnabled = true
            imageView.image = UIImage(named: imageArray[1])
            nameOfImage.text = String(imageLable[1])
          case 3: backImage.isEnabled = true
            imageView.image = UIImage(named: imageArray[2])
            nameOfImage.text = String(imageLable[2])
          case 4: backImage.isEnabled = true
            imageView.image = UIImage(named: imageArray[3])
            nameOfImage.text = String(imageLable[3])
          case 5: backImage.isEnabled = true
            imageView.image = UIImage(named: imageArray[4])
            nameOfImage.text = String(imageLable[4])
          case 6: nextImage.isEnabled = false
            imageView.image = UIImage(named: imageArray[5])
            nameOfImage.text = String(imageLable[5])
          default: number = 1
          }
              }
          }


    }




