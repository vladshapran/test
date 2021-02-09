import UIKit 

protocol MovieView: class {
  func updateMovie(movieList: [MovieItemModel]) -> ()
  func favouriteMovies() -> [MovieItemModel]
}

class MovieVC: UIViewController {
    var presenter: MoviePresenter!
    var datasource: [MovieItemModel] = [] {
      didSet {
        self.tableView.reloadData()
      }
    }
    let favouriteMovie:  [MovieItemModel] = []
    let tableView = UITableView()
    let movieCell = "CustomMovieTableViewCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.presenter?.viewDidLoad()
    createTableView()
    let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(longPressed(sender:)))
    self.view.addGestureRecognizer(longPressRecognizer)
  }
  
  func createTableView() {
        view.addSubview(tableView)
        tableView.register(UINib.init(nibName: movieCell, bundle: nil), forCellReuseIdentifier: movieCell)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
      
    }
  
  @objc func longPressed(sender: UILongPressGestureRecognizer) {

        if sender.state == UIGestureRecognizer.State.began {
            let touchPoint = sender.location(in: self.tableView)
            if let indexPath = tableView.indexPathForRow(at: touchPoint) {
                favouriteMovie.append(datasource?.[indexPath.row])
            }
        }
    }
} 

extension MovieVC: MovieView {
  func updateMovie(movieList: [MovieItemModel]) {
    self.datasource = movieList
  }
  func favouriteMovies() -> [MovieItemModel] {
    return self.favouriteMovie
  }
}


extension MovieVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.configurate(usingViewModel: datasource.[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailsVC()
        detailVC.movie = datasource?.[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
