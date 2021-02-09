import UIKit

class DetailsVC: UIViewController {

    var descriptions = UILabel()
    var releaseData = UILabel()
    var imageMovie = UIImageView()
    
    var movie: MovieItemModel 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        settingUpObjects()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
            self.title = movie?.original_title
            descriptions.text = "Описание" + (movie?.overview ?? " ")
            releaseData.text = "Дата релиза: " + (movie?.release_date ?? " ")
        
            let url = URL(string: "https://image.tmdb.org/t/p/w500/"  + (movie?.backdrop_path ?? " " )) ?? nil
            if let data = try? Data(contentsOf: url!) {
                image?.image = UIImage(data: data)
         }
    }
    
    func settingUpObjects() {
        
        
        view.addSubview(descriptions)
        view.addSubview(releaseData)
        view.addSubview(imageMovie)
        
    }
  
        
    
    
}
