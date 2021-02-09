import Foundation 


typealias MovieClosure = (Result) -> (Void)

// MARK: -Protocol.

protocol MovieAPI {
  func fetchMovie(completion: MovieClosure) -> (Void)
}

class NetworkService { 
  static let shared: NetworkService = NetworkService()
  private init() {}
}

extension NetworkService: MovieAPI {

  // MARK: -Getting movies from the network.
  
  func fetchMovie(completion: MovieClosure) {
    let urlString  = "https://api.themoviedb.org/3/movie/popular?api_key=505cc219eeba7ba5c8c15a6d0a5b3779&language=en-US&page=1"
    guard url = URL(string: urlString) else { return }
    
    URLSession.shared.dataTask(with: url) { data, _, error in 
      if let error = error {
        print("\(error)")
        return
      }
      
      do {
        let obj = try JSONDecoder().decode(Result.self, from: data!)
        completion(Result)
      } catch {
        print("\(error)")
      }
    }.resume()
  }
}
