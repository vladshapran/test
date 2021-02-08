import UIKit


protocol MovieRouting {

}

class MovieRouter {
  var viewController: UIViewController
  
  init(view: UIViewController) {
    self.viewController = view
  }
}
