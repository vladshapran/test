


protocol MoviePresentation {
  func viewDidLoad() -> (Void)
}

class MoviePresenter {
  weak var view: MovieView? 
  var interactor: MovieUseCase?
  var router: MovieRouting? 
  
  init(view: MovieView, interactor: MovieUseCase, router: MovieRouting) {
    self.view = view
    self.interactor = interactor
    self.router = router
  }
    
}

extension MoviePresenter: MoviePresentation {
  func viewDidLoad(){
    self.interactor.getMovie(completion: { (result) in
        let movieList = result.
    })
  }
}

struct MovieItemModel {
    let backdrop_path: String?
    let original_title: String?
    let overview: String?
    let release_date: String?
    let genre_ids: [Int?]
  
  init(using movieModel: Movie){
    self.backdrop_path = backdrop_path
    self.original_title = original_title
    self.overview = overview
    self.release_date = release_date
    self.genre_ids = genre_ids
  }
}
