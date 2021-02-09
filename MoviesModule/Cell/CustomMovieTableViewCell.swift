import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var nameMovie: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configurate(usingViewModel viewModel: MovieItemModel) -> Void {
        self.nameMovie = viewModel.original_title
    }
    
}
