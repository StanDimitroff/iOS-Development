
import UIKit

class RecipeTVCell: UITableViewCell {

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var viewsLabel: UILabel!

    var recipe: Recipe! {
        didSet {
            updateUI()
        }
    }

    private func updateUI() {
        dishImageView.image = recipe.image
        nameLabel.text      = recipe.name
        timeLabel.text      = "\(recipe.cookingTime) m"
        viewsLabel.text     = "\(recipe.viewCount) views"
    }
}
