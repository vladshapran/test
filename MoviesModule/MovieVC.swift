import UIKit 

protocol MovieView {
  
}

class MovieVC: UIViewController {
    var presenter: MoviePresenter!
} 

extension MovieVC: MovieView {
  
}
