import UIKit

class DetailsVC: UIViewController {

    @IBOutlet var name: UILabel!
    @IBOutlet var genres: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detail Info"
          
    }
    
}
