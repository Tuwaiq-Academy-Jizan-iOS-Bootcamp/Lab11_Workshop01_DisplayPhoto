//
//  ViewController.swift
//  photo
//
//  Created by يوسف جابر المالكي on 14/03/1443 AH.
//

import UIKit
 class ViewController: UIViewController {

   var imageLable = ["1/4","2/4","3/4","4/4"]
   var imageArray = ["image1","image2","image3","image4"]
   var number = 0
   @IBOutlet weak var nameOfImage: UILabel!
   @IBOutlet weak var imageView: UIImageView!
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
   case 5: number = 1
     imageView.image = UIImage(named: imageArray[0])
     nameOfImage.text = imageLable[0]
   case 0: number = 4
     imageView.image = UIImage(named: imageArray[3])
     nameOfImage.text = imageLable[3]
   default: number = 1
   }
   }
 }
