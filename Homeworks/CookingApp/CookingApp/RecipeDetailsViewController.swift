
import UIKit

protocol RecipeDetailsViewControllerDelegate: class {
    func recipeFavouriteChanged(recipe: Recipe, atIndexPath indexPath: IndexPath)
}

class RecipeDetailsViewController: UIViewController {

    weak var delegate: RecipeDetailsViewControllerDelegate?

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    var recipe: Recipe?
    var recipeIndexPath: IndexPath!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: 1000)
    }

    func setupUI() {
        guard let recipe = self.recipe else { return }
        navigationItem.rightBarButtonItem?.title = recipe.isFavourite ? "Unfavourite" : "Favourite"

        recipeImageView.image = recipe.image
        nameLabel.text        = recipe.name
        timeLabel.text        = "\(recipe.cookingTime) m"
        descriptionLabel.text = recipe.description

        let ingredientsString: String = recipe.ingredients.map { "• \($0.quantity.toRationalFraction) \($0.measurement) \($0.name)" }
            .joined(separator: "\n")
        ingredientsLabel.text = ingredientsString
    }

    @IBAction func setFavourite(_ sender: UIBarButtonItem) {
        delegate?.recipeFavouriteChanged(recipe: recipe!, atIndexPath: recipeIndexPath)
        _ = navigationController?.popViewController(animated: true)
    }
}
