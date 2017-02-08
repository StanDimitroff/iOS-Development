
import UIKit

struct Recipe {

    let name: String
    let cookingTime: Int
    let ingredients: [Ingredient]
    let description: String
    let image: UIImage
    var isFavourite: Bool = false
    var viewCount: Int = 0

    init(name: String, time: Int, ingredients: [Ingredient], description: String, image: UIImage) {
        self.name        = name
        self.cookingTime = time
        self.ingredients = ingredients
        self.description = description
        self.image       = image
    }
}
