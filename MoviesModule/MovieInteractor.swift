
protocol MovieUseCase {
  func getMovie(completion: MovieClosure) -> (Void)
}

class MovieInteractor: MovieUseCase {
  
  var service: MovieAPI
  init(service: MovieAPI) {
    self.service = service
  }
}

extension MovieInteractor {
  func getMovie(completion: (MovieClosure) -> (Void)) {
     self.service.fetchMovie { (result) in 
                              completion(result)
  }
}
