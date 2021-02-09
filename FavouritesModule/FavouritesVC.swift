import UIKit

class FavouritesVC: UIViewController {
  
  let tableView = UITableView()
  let movieCell = "CustomMovieTableViewCell
  
  override func viewDidLoad() {
    super.viewDidLoad()
    createTableView()
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
  
}
