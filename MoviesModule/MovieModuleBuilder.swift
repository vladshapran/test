import UIKit

class MovieModuleBuilder {
  func build() -> UIViewController {
       
       let view = MovieVC()
       let presenter = MoviePresenter(interactor: interactor, router: router)
       let router = MovieRouter(view: view)
       let interactor = MovieInteractor(service: NetworkService.shared)
       view.presenter = presenter
    
       return view
   }
}
