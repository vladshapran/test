import UIKit

class DetailsModuleBuilder {
  static func build(usingNavigationFactory factory: NavigationFactory) -> UINavigationController {
       
       let view = DetailsVC()    
       return factory(view)
   }
}
