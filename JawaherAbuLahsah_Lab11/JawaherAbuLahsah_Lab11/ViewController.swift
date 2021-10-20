//
//  ViewController.swift
//  JawaherAbuLahsah_Lab11
//
//  Created by Jawaher Mohammad on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoViwe: UIImageView!
    @IBOutlet weak var photoName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
let photoArr = ["image1","image2","image3","image4","image5","image6","image7","image8","image9"]
    
        var photoNum = 0
    @IBAction func nextButton(_ sender: UIButton) {
            if photoNum <= photoArr.count {
             
                if photoNum == 8 {
                    photoNum = 0 - 1
                }
                photoNum += 1
                photoViwe.image = UIImage(named: photoArr[photoNum])
                photoName.text = String(photoArr[photoNum])
                
            }
            
        }
    @IBAction func previousButton(_ sender: UIButton) {
       
        if photoNum == 0{
        photoNum = 9
                    }
           photoNum -= 1
            photoViwe.image = UIImage(named: photoArr[photoNum])
            photoName.text = String(photoArr[photoNum])
    }
    
    
    
}
