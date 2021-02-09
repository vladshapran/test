import UIKit

tepealias MovieTabs = (
  movie: UIViewController,
  favourites: UIViewController
)

class TabBarController: UITabBarController {
  
  let tabBarController = UITabBarController() 
  init(tabs: MovieTabs) {
    super.init(nibName: nil, bundle: nil)
    
    viewControllers = [tabs.movie, tabs.favourites]
  }
  
  required init?(coder aDecoder: NSDecoder) {
    fatalError("Error")
  }
  
  override func viewDidLoad(){
    super.viewDidLoad
  } 
}
