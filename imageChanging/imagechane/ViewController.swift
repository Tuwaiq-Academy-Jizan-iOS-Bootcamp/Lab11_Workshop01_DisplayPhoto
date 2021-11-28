//
//  ViewController.swift
//  imagechane
//
//  Created by Ehab Hakami on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
      var imageArray = ["mbappe","neymar j-1","Tom hardy"]
      var number = 0
    
      @IBOutlet weak var nameOfImage: UILabel!
      @IBOutlet weak var imageView: UIImageView!
      @IBOutlet weak var nextImage: UIButton!
      @IBOutlet weak var backImage: UIButton!
      override func viewDidLoad() {
        super.viewDidLoad()
          let number = 0
        imageView.image = UIImage(named: imageArray[0])
          nameOfImage.text = imageArray[number]

      }
      @IBAction func buttonRight(_ sender: UIButton) {
          if number < imageArray.count - 1 {
              number += 1
              
          }else{
              number = 0
          }
          imageView.image = UIImage(named: imageArray[number])
          nameOfImage.text = imageArray[number]
      }
    @IBAction func buttonLeft(_ sender: UIButton){
        if number > 0 {
            number -= 1
            
        }else{
            number = imageArray.count - 1
        }
        imageView.image = UIImage(named: imageArray[number])
        nameOfImage.text = imageArray[number]
          imageView.image = UIImage(named: imageArray[number])
        nameOfImage.text = imageArray[number]
      }
    
}

                
