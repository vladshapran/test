import UIKit

class TabBarRouter {

  var viewController: UIViewController
 
  
  typealias Submodules = (
    movie: UIViewController,
    favourites: UIViewController
  )
  
  init(viewController: UIViewController){
    self.viewController = viewController
    
  }
}

extension TabBarRouter {
  static func tabs(usingSubmodules submodules: Submodules) -> MovieTabs {
    let movieTabBarItem = UITabBarItem(title: "List", image: nil, tag: 11)
    let favouritesTabBarItem = UITabBarItem(title: "Favourites", image: nil, tag: 12)
    
    submodules.movie.tabBarItem = movieTabBarItem
    submodules.favourites.tabBarItem = favouritesTabBarItem
    
    return (
      movie: submodules.movie,
      favourites: submodules.favourites
    )
  }
}
