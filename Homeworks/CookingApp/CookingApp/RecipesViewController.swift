
import UIKit

class RecipesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    fileprivate var recipes: [Recipe] = MockData.recipes {
        didSet {

            // sort alphabetically
            recipes = recipes.sorted {
                (s1, s2) -> Bool in return s1.name.localizedStandardCompare(s2.name) == .orderedAscending
            }

            // sort by view count
            recipes = recipes.sorted {
                (s1, s2) -> Bool in return s1.viewCount > s2.viewCount
            }

            favouritesRecipes = recipes.filter{ $0.isFavourite }
            unfavouritesRecipes = recipes.filter{ !$0.isFavourite }

            hasFavourites = !recipes.filter { $0.isFavourite }.isEmpty
        }
    }

    fileprivate var favouritesRecipes: [Recipe] = []
    fileprivate var unfavouritesRecipes: [Recipe] = []

    fileprivate var hasFavourites: Bool = false

    fileprivate var selectedRecipe: Recipe!
    fileprivate var selectedIndexPath: IndexPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
    }
}

// MARK: UITableViewDataSource
extension RecipesViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {

        return hasFavourites ? 2 : 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if hasFavourites {
            switch section {
            case 0: return favouritesRecipes.count

            default: return unfavouritesRecipes.count
            }
        }

        return recipes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeTVCell

        if hasFavourites {
            switch indexPath.section {
            case 0: cell.recipe = favouritesRecipes[indexPath.row]

            default: cell.recipe = unfavouritesRecipes[indexPath.row]
            }
        } else {
            cell.recipe = recipes[indexPath.row]
        }

        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if hasFavourites {
            switch section {
            case 0: return "Favourites"

            default: return recipes.filter{ !$0.isFavourite }.isEmpty ? nil : "Rest"
            }
        }

        return nil
    }
}

// MARK: UITableViewDelegate
extension RecipesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if hasFavourites {
            switch indexPath.section {
            case 0: selectedRecipe = favouritesRecipes[indexPath.row]
            case 1: selectedRecipe = unfavouritesRecipes[indexPath.row]
            default: break
            }
        } else {
            selectedRecipe = recipes[indexPath.row]
        }


        selectedRecipe = recipes[indexPath.section + indexPath.row]
        selectedIndexPath = indexPath

        recipes[indexPath.row].viewCount += 1
        tableView.reloadData()

        performSegue(withIdentifier: "ShowRecipe", sender: self)
    }
}

// MARK: Navigation
extension RecipesViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowRecipe" {
            let vc = segue.destination as! RecipeDetailsViewController
            vc.recipe = selectedRecipe
            vc.recipeIndexPath = selectedIndexPath
            vc.delegate = self
        }
    }
}

// MARK: RecipeDetailsViewControllerDelegate
extension RecipesViewController: RecipeDetailsViewControllerDelegate {
    func recipeFavouriteChanged(recipe: Recipe, atIndexPath indexPath: IndexPath) {
        var recipe = recipes.filter { $0.name == recipe.name }.first!
        recipe.isFavourite = !recipe.isFavourite
        recipes[indexPath.row] = recipe

        tableView.reloadData()
    }
}
