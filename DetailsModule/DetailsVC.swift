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
    }
    
    func settingUpObjects() {
        
        
        descriptions.numberOfLines = 0
        descriptions.text = "Описание" + (movie?.overview ?? " ")
        
        releaseData.numberOfLines = 0
        releaseData.text = "Дата релиза: " + (movie?.release_date ?? " ")
        
        imageMovie.contentMode = .scaleAspectFit
        let url = URL(string: "https://image.tmdb.org/t/p/w500/"  + (movie?.backdrop_path ?? " " )) ?? nil
            if let data = try? Data(contentsOf: url!) {
                imageMovie?.image = UIImage(data: data)
         }
        
        imageMovie.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        imageMovie.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageMovie.heightAnchor.constraint(equalToConstant: 88).isActive = true
        
        descriptions.topAnchor.constraint(equalTo: imageMovie.bottomAnchor, constant: 20).isActive = true
        descriptions.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        descriptions.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        releaseData.topAnchor.constraint(equalTo: descriptions.bottomAnchor, constant: 20).isActive = true
        releaseData.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        releaseData.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        
        view.addSubview(descriptions)
        view.addSubview(releaseData)
        view.addSubview(imageMovie)
        
    }
  
        
    
    
}
