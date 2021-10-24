//
//  ViewController.swift
//  DisplayPhoto
//
//  Created by Abdulrahman Gazwani on 16/03/1443 AH.
//

import UIKit
class ViewController: UIViewController {
       
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabl: UILabel!
    
    var imageName = ""
    var buttonActions = 0
    var index: Int = 0
    var arrayphot1 = ["Manchestr United","PSG","Real Madrid"]


    @IBAction func nextButton(_ sender: Any) {
        if index < arrayphot1.count - 1 {
            index += 1
        }else {
            index = 0
        }
        imageView.image = UIImage(named: arrayphot1[index] )
        nameLabl.text = arrayphot1[index]
        
    }


    @IBAction func backButton(_ sender: Any) {
        if index > 0 {
            index -= 1
        }else {
            index = arrayphot1.count - 1
        }
        imageView.image = UIImage(named: arrayphot1[index] )
       nameLabl.text = arrayphot1[index]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: arrayphot1[0] )
       nameLabl.text = arrayphot1[0]

    }
}

