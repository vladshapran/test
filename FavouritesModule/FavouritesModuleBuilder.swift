import UIKit

class FavouritesModuleBuilder {
  static func build(usingNavigationFactory factory: NavigationFactory) -> UINavigationController {
       
       let view = FavouritesVC()
       return factory(view)
   }
}
