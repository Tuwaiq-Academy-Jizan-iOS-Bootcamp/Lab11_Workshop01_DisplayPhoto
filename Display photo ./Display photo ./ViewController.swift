//
//  ViewController.swift
//  Display photo .
//
//  Created by موسى مسملي on 23/10/2021.
//

import UIKit

import UIKit

class ViewController: UIViewController {

    var index: Int = 0
    var myImages = ["ksa","king salman","prince mohammed"]
 
    @IBOutlet weak var viewimages: UIImageView!
    
    @IBOutlet weak var labelimage: UILabel!
    
 
    override func viewDidLoad()
    {
    super.viewDidLoad()
        viewimages.image = UIImage(named: myImages[0] )
        labelimage.text = myImages[0]
    }

    @IBAction func backbutton(_ sender: Any)
    
    
    
    {
    if index > 0
    {
    index -= 1
    }
    else
    {
    index = myImages.count - 1
    }
        viewimages.image = UIImage(named: myImages[index] )
        labelimage.text = myImages[index]
    }
    

    @IBAction func nextbutton(_ sender: Any) {

    
    
    if index < myImages.count - 1
    {
    index += 1
    }
    else
    {
    index = myImages.count - 1
    }
        viewimages.image = UIImage(named: myImages[index] )
        labelimage.text = myImages[index]
    }
    }








    
    
    
    
    
