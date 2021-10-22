//
//  ViewController.swift
//  n0011
//
//  Created by Nasser Aseeri on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labl: UILabel!
    @IBOutlet var nas1: [UIImageView]!
    @IBOutlet weak var imagView:UIImageView!
    var arryImag = ["nas1", "nas2", "nas3", "nas4" ]
    var arryLabl = ["nasser", "nasser1", "nasser2", "nasser3" ]
    var numberImag = 0
    @IBOutlet weak var goBack: UIButton!
    @IBOutlet weak var nextImage: UIButton!

    override func viewDidLoad() {
       super.viewDidLoad()
    
    }

    //FUnction\\
    func number() {
switch numberImag {
case 1: nextImage.isEnabled = false
 imagView.image = UIImage(named: arryLabl[0])
 labl.text = arryImag[0]
    
case 2:nextImage.isEnabled = false
    imagView.image = UIImage(named: arryImag[1])
    labl.text = arryImag[1]
    
case 3: goBack.isEnabled = false
 imagView.image = UIImage(named: arryImag[2])
 labl.text = arryImag[2]
    
case 4: goBack.isEnabled = false
 imagView.image = UIImage(named: arryImag[3])
 labl.text = arryImag[3]
    
    
default: numberImag = 0
    
}
}
}
