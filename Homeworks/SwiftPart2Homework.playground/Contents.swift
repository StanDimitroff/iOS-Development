// Task 1
// Cooking Recipes
// You are making an application for cooking recipes.
// In your application you must have at least 3 recipes for different dishes.
// You must have all the products for cooking in an enum. (e.g. enum Products with items - sugar, salt, pepper, banana etc.) . Do not forget that the recipes are sometimes consisting of few items with different amount of them (e.g. sugar - 100 gr, banana 2 pcs.). Create a function used for search of an item, and if the item is found the recipe must be printed.

enum Product: String, CustomStringConvertible {
    case Sugar = "Sugar", Salt = "Salt", Pepper = "Pepper", Banana = "Banana", Milk = "Milk", Eggs = "Eggs", Garlic = "Garlic", Lentil = "Lentil", Tomatoes = "Tomatoes", Pork = "Pork", Potatoes = "Potatoes", Chicken = "Chicken", Rice = "Rice", Beans = "Beans", Cheese = "Cheese"
    
    var description: String {
        switch self {
        case .Milk: return "ml"
        case .Eggs, .Banana: return "pcs"
        default: return "gr"
        }
    }
}

enum RecipeType: String, CustomStringConvertible {
    case LentilSoup = "Lentil soup", PorkChop = "Pork chop", CaramelCustard = "Caramel custard"
    
    var description: String {
        switch self {
        case .LentilSoup: return "Grandma lentil soup"
        case .PorkChop: return "The well known piece of meat"
        case .CaramelCustard: return "Very light dessert indeed"
        }
    }
}

struct Recipe {
    var type: RecipeType
    
    var products: [Product: Int] {
        get {
            switch type {
            case .LentilSoup: return [.Lentil : 400, .Garlic: 30, .Tomatoes: 150, .Salt: 10]
            case .PorkChop: return [.Pork : 500, .Salt: 10, .Pepper: 10]
            case .CaramelCustard: return [.Eggs : 10, .Sugar: 100, .Milk: 800]
            }
        }
    }
    
    init(_ type: RecipeType) {
        self.type = type
    }
    
    func show() {
        print("Title: \(self.type.rawValue)")
        print("Description: \(self.type.description)")
        print("Needed products:")
        for product in self.products {
            print("\(product.key.rawValue): \(product.value) \(product.key.description)")
        }
    }
}

func printRecipe(forProduct product: Product) {
    switch product {
    case .Lentil, .Tomatoes, .Garlic:
        let recipe = Recipe(.LentilSoup)
        recipe.show()
    case .Pork, .Pepper, .Salt:
        let recipe = Recipe(.PorkChop)
        recipe.show()
    case .Sugar, .Milk, .Eggs:
        let recipe = Recipe(.CaramelCustard)
        recipe.show()
    
    default: print("No recipe found")
    }
}

// printRecipe(forProduct: .Banana)
// printRecipe(forProduct: .Eggs)
// printRecipe(forProduct: .Salt)
// printRecipe(forProduct: .Lentil)

// Task 2
// What I should buy ?
// Consider the data from task 1. You must extend the application with functionality to have information about the product availability at your home. Make a function that checks if you have all the needed items in order to cook a dish. If no, make a function to print information about what products must be bought and how many (how much).


let productsAtHome: [Product: Int] = [.Eggs : 10, .Sugar: 100, .Milk: 800] // [.Lentil : 100, .Sugar: 100, .Milk: 800] [.Eggs : 2, .Sugar: 100, .Milk: 800]


func canCookADish(forRecipe recipe: Recipe) -> Bool {
    let productsForRecipe = recipe.products
    
    for product in productsForRecipe {
        // check for product
        let keyIndex = productsAtHome.keys.index(of: product.key)
        
        guard let index = keyIndex else {
            printNeededProducts(forRecipe: recipe)
            
            return false
        }
        
        // check for product quantity
        if productsAtHome[index].value < product.value {
            printNeededProducts(forRecipe: recipe)
            
            return false
        }
    }
    
    return true
}

func printNeededProducts(forRecipe recipe: Recipe) {
    let productsForRecipe = recipe.products
    
    print("Products to buy:")
    for product in productsForRecipe {
        // check for product
        let keyIndex = productsAtHome.keys.index(of: product.key)
        
        // check for product quantity
        if let index = keyIndex {
            let productAtHomeQuantity = productsAtHome[index].value
            if productAtHomeQuantity < product.value {
                print("\(product.key.rawValue) - have to buy \(product.value - productAtHomeQuantity) \(product.key.description) or more")
            }
        } else {
            print("\(product.key.rawValue) - have to buy \(product.value) \(product.key.description) or more")
        }
    }
}

// print(canCookADish(forRecipe: Recipe(.LentilSoup)))
// print(canCookADish(forRecipe: Recipe(.PorkChop)))
// print(canCookADish(forRecipe: Recipe(.CaramelCustard)))

