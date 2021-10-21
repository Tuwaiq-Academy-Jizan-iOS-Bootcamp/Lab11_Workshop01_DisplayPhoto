
import UIKit

class ViewController: UIViewController {
                 //=======\\
                //Variables\\
               //===========\\
    var imageLable = ["Dice face 1","Dice Face 2","Dice face 3","Dice face 4","Dice face 5","Dice face 6"]
    var imageArray = ["face1","face2","face3","face4","face5","face6"]
    var number = 0
    @IBOutlet weak var nameOfImage: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextImage: UIButton!
    @IBOutlet weak var backImage: UIButton!
                  //=====\\
                 //Starter\\
                //=========\\
    override func viewDidLoad() {
        super.viewDidLoad()
        number = 1
        imageView.image = UIImage(named: imageArray[0])
        nameOfImage.text = imageLable[0]
        
    }
               //============\\
              //Button Actions\\
             //================\\
    @IBAction func buttonRight(_ sender: UIButton) {
        number += 1
        Display()
    }
    @IBAction func buttonLeft(_ sender: UIButton) {
        number -= 1
        Display()
    }
                  //======\\
                 //Function\\
                //==========\\
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
        imageView.image = UIImage(named: imageArray[4])
        nameOfImage.text = imageLable[4]
    case 6:
        imageView.image = UIImage(named: imageArray[5])
        nameOfImage.text = imageLable[5]
    case 7:
        number = 1
        imageView.image = UIImage(named: imageArray[0])
        nameOfImage.text = imageLable[0]
    case 0:
        number = 6
        imageView.image = UIImage(named: imageArray[5])
        nameOfImage.text = imageLable[5]
    default: number = 1
    }
    }


}
