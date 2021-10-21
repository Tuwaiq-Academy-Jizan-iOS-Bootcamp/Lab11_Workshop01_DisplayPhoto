import UIKit

class ViewController: UIViewController {

    var index: Int = 0
    var myImages = ["tuwaiq academy","safcsp","Steve Jobs","Google Developers"]
 
    @IBOutlet var viewImages: UIImageView!

    @IBOutlet var labelImage: UILabel!
    override func viewDidLoad()
    {
    super.viewDidLoad()
    viewImages.image = UIImage(named: myImages[0] )
    labelImage.text = myImages[0]
    }

    @IBAction func backButton(_ sender: Any)
    {
    if index > 0 {
    index -= 1
    }
    else
    {
    index = myImages.count - 1
    }
    viewImages.image = UIImage(named: myImages[index] )
    labelImage.text = myImages[index]
    }

    @IBAction func nextButton(_ sender: Any)
    {
    if index < myImages.count - 1
    {
    index += 1
    }
    else
    {
    index = myImages.count - 1
    }
    viewImages.image = UIImage(named: myImages[index] )
        labelImage.text = myImages[index]
    }
    }
