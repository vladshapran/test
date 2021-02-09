import UIKit

class MovieModuleBuilder {
  static func build(usingNavigationFactory factory: NavigationFactory) -> UINavigationController {
       
       let view = MovieVC()
       let presenter = MoviePresenter(interactor: interactor, router: router)
       let router = MovieRouter(view: view)
       let interactor = MovieInteractor(service: NetworkService.shared)
       view.presenter = presenter
    
       return factory(view)
   }
}
