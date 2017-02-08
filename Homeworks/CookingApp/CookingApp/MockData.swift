
import UIKit

final class MockData {

    static let recipes: [Recipe] = [
        Recipe(name: "Meatball Nirvana", time: 40, ingredients:
            [
                Ingredient(name: "extra lean ground beef", measurementType: .kilo, quantity: 0.5),
                Ingredient(name: "sea salt", measurementType: .teaspoon, quantity: 0.5),
                Ingredient(name: "small onion, diced", measurementType: .piece, quantity: 1),
                Ingredient(name: "garlic salt", measurementType: .teaspoon, quantity: 0.5),
                Ingredient(name: "italian seasoning", measurementType: .teaspoon, quantity: 1.5),
                Ingredient(name: "dried oregano", measurementType: .teaspoon, quantity: 0.75),
                Ingredient(name: "crushed red pepper flakes", measurementType: .teaspoon, quantity: 0.75),
                Ingredient(name: "Worcestershire sauce", measurementType: .tablespoon, quantity: 1.5),
                Ingredient(name: "skim milk", measurementType: .cup, quantity: 0.333333),
                Ingredient(name: "grated Parmesan cheese", measurementType: .cup, quantity: 0.25),
                Ingredient(name: "seasoned bread crumbs", measurementType: .cup, quantity: 0.5)
            ], description: "Preheat an oven to 400 degrees F (200 degrees C).\n\nPlace the beef into a mixing bowl, and season with salt, onion, garlic salt, Italian seasoning, oregano, red pepper flakes, hot pepper sauce, and Worcestershire sauce; mix well. Add the milk, Parmesan cheese, and bread crumbs. Mix until evenly blended, then form into 1 1/2-inch meatballs, and place onto a baking sheet.\n\nBake in the preheated oven until no longer pink in the center, 20 to 25 minutes.", image: UIImage(named: "meatballs")!),
        
        Recipe(name: "Chicken and Ham Casserole", time: 45, ingredients:
            [
                Ingredient(name: "butter", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "all-purpose flour", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "milk", measurementType: .cup, quantity: 1),
                Ingredient(name: "cooked, cubed chicken breast meat", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "cooked and cubed ham", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "cooked wide egg noodles", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "cup chopped celery", measurementType: .cup, quantity: 0.25),
                Ingredient(name: "salt", measurementType: .teaspoon, quantity: 0.5),
                Ingredient(name: "chopped celery", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "ground black pepper", measurementType: .teaspoon, quantity: 0.25),
                Ingredient(name: "ounces shredded Cheddar cheese", measurementType: .piece, quantity: 3),
                Ingredient(name: "paprika", measurementType: .teaspoon, quantity: 1)
            ], description: "Preheat oven to 400 degrees F (200 degrees C). \n\nMelt butter in a large saucepan over low heat. Stir in the flour and heat until bubbly. Slowly add the milk, stirring constantly, until mixture is thickened and smooth. \n\nRemove from heat and stir in the chicken, ham, noodles, celery, salt and ground black pepper. Transfer this mixture to a 1 1/2 quart casserole dish. \n\nBake at 400 degrees F (200 degrees C) for 15 minutes. Remove from oven, sprinkle with the cheese and top with paprika, as desired. Return to oven and bake for 5 to 10 minutes, or until cheese is bubbly.", image: UIImage(named: "chicken")!),

        Recipe(name: "Prawn Saganaki", time: 50, ingredients:
            [
                Ingredient(name: "olive oil", measurementType: .tablespoon, quantity: 1),
                Ingredient(name: "red onion, halved and thinly sliced", measurementType: .piece, quantity: 1),
                Ingredient(name: "garlic, thinly sliced", measurementType: .piece, quantity: 3),
                Ingredient(name: "tomato paste", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "cup white wine", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "jar tomato and olive pasta sauce (such as Papayiannides® Tomato & Olive & Ouzo Sauce)", measurementType: .piece, quantity: 1),
                Ingredient(name: "prawns, peeled and deveined, tail on", measurementType: .kilo, quantity: 1),
                Ingredient(name: "crumbled Greek feta cheese", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "chopped fresh flat-leaf parsley", measurementType: .tablespoon, quantity: 2)
            ], description: "Preheat oven to 400 degrees F (200 degrees C). \n\nHeat olive oil in a large skillet over medium heat; cook and stir onion until soft, about 5 minutes. Stir in garlic and cook until fragrant, about 1 minute. Stir tomato paste into onion mixture; cook and stir for 1 minute. \n\nPour wine into tomato mixture; simmer until liquid is reduced by about half, about 5 minutes. Stir tomato sauce into wine mixture and simmer until mixture is thick, about 10 minutes. \n\nSpread tomato mixture into the base of a 6-cup baking dish; top with prawns and sprinkle evenly with feta cheese. \n\nBake in the preheated oven until prawns are bright pink on the outside and the meat is no longer transparent in the center, about 10 minutes; top with parsley.", image: UIImage(named: "prawns")!),
        
        Recipe(name: "Roasted Rosemary Onion Potatoes", time: 35, ingredients:
            [
                Ingredient(name: "vegetable oil", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "small onion, finely chopped", measurementType: .piece, quantity: 1),
                Ingredient(name: "chopped fresh rosemary", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "chopped fresh thyme", measurementType: .teaspoon, quantity: 1),
                Ingredient(name: "salt", measurementType: .teaspoon, quantity: 0.25),
                Ingredient(name: "ground black pepper", measurementType: .teaspoon, quantity: 0.125),
                Ingredient(name: "potatoes, cut into 1-inch chunks", measurementType: .kilo, quantity: 1)
            ], description: "Preheat oven to 450 degrees F (230 degrees C). Grease a large baking sheet with a rim. \n\nMix onion, vegetable oil, rosemary, thyme, salt, and pepper in a large bowl; add potato pieces and toss to coat. Spread potatoes into prepared pan in a single layer. \n\nBake, turning occasionally, until potatoes are lightly browned and tender when pierced with a fork, 20 to 25 minutes.", image: UIImage(named: "potatoes")!),

        Recipe(name: "Baked Spaghetti", time: 85, ingredients:
            [
                Ingredient(name: "spaghetti", measurementType: .piece, quantity: 1),
                Ingredient(name: "ground beef", measurementType: .kilo, quantity: 1),
                Ingredient(name: "onion, chopped", measurementType: .piece, quantity: 1),
                Ingredient(name: "jar meatless spaghetti sauce", measurementType: .piece, quantity: 1),
                Ingredient(name: "seasoned salt", measurementType: .teaspoon, quantity: 0.5),
                Ingredient(name: "eggs", measurementType: .piece, quantity: 2),
                Ingredient(name: "grated Parmesan cheese", measurementType: .cup, quantity: 0.333333),
                Ingredient(name: "butter, melted", measurementType: .tablespoon, quantity: 5),
                Ingredient(name: "shredded mozzarella cheese, divided", measurementType: .cup, quantity: 4),
                Ingredient(name: "small curd cottage cheese, divided", measurementType: .cup, quantity: 2)
            ], description: "Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x13-inch baking dish. \n\nBring a large pot of lightly salted water to a boil. Cook spaghetti in boiling water, stirring occasionally until cooked through but firm to the bite, about 12 minutes. Drain. \n\nHeat a large skillet over medium heat; cook and stir beef and onion until meat is browned and onions are soft and translucent, about 7 minutes. Drain. Stir in spaghetti sauce and seasoned salt. \n\nBake in preheated oven for 40 minutes. Remove foil and continue to bake until the cheese is melted and lightly browned, 20 to 25 minutes longer.", image: UIImage(named: "spaghetti")!),

        Recipe(name: "Sausage Stuffed Jalapenos", time: 45, ingredients:
            [
                Ingredient(name: "ground pork sausage", measurementType: .kilo, quantity: 1),
                Ingredient(name: "cream cheese, softened", measurementType: .piece, quantity: 1),
                Ingredient(name: "shredded Parmesan cheese", measurementType: .cup, quantity: 1),
                Ingredient(name: "large fresh jalapeno peppers, halved lengthwise and seeded", measurementType: .kilo, quantity: 1),
                Ingredient(name: "Ranch dressing (optional)", measurementType: .piece, quantity: 1)
            ], description: "Preheat oven to 425 degrees F (220 degrees C). \n\nPlace sausage in a skillet over medium heat, and cook until evenly brown. Drain grease. \n\nIn a bowl, mix the sausage, cream cheese, and Parmesan cheese. Spoon about 1 tablespoon sausage mixture into each jalapeno half. Arrange stuffed halves in baking dishes. \n\nBake 20 minutes in the preheated oven, until bubbly and lightly browned. Serve with Ranch dressing", image: UIImage(named: "jalapenos")!),

        Recipe(name: "Roasted Brussels Sprouts", time: 60, ingredients:
            [
                Ingredient(name: "Brussels sprouts, ends trimmed and yellow leaves removed", measurementType: .kilo, quantity: 1),
                Ingredient(name: "olive oil", measurementType: .tablespoon, quantity: 3),
                Ingredient(name: "kosher salt", measurementType: .teaspoon, quantity: 1),
                Ingredient(name: "freshly ground black pepper", measurementType: .teaspoon, quantity: 0.5)
            ], description: "Preheat oven to 400 degrees F (205 degrees C). \n\nPlace trimmed Brussels sprouts, olive oil, kosher salt, and pepper in a large resealable plastic bag. Seal tightly, and shake to coat. Pour onto a baking sheet, and place on center oven rack. \n\nRoast in the preheated oven for 30 to 45 minutes, shaking pan every 5 to 7 minutes for even browning. Reduce heat when necessary to prevent burning. Brussels sprouts should be darkest brown, almost black, when done. Adjust seasoning with kosher salt, if necessary. Serve immediately", image: UIImage(named: "brussels_sprouts")!),

        Recipe(name: "Creme Brulee French Toast", time: 60, ingredients:
            [
                Ingredient(name: "unsalted butter", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "packed brown sugar", measurementType: .cup, quantity: 1),
                Ingredient(name: "corn syrup", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "sliced French bread", measurementType: .piece, quantity: 6),
                Ingredient(name: "eggs", measurementType: .piece, quantity: 5),
                Ingredient(name: "half-and-half cream", measurementType: .cup, quantity: 1.5),
                Ingredient(name: "vanilla extract", measurementType: .teaspoon, quantity: 1),
                Ingredient(name: "brandy-based orange liqueur (such as Grand Marnier®)", measurementType: .tablespoon, quantity: 1),
                Ingredient(name: "salt", measurementType: .teaspoon, quantity: 0.5)
            ], description: "Melt butter in a small saucepan over medium heat. Mix in brown sugar and corn syrup, stirring until sugar is dissolved. Pour into a 9x13 inch baking dish. \n\nRemove crusts from bread, and arrange in the baking dish in a single layer. In a small bowl, whisk together eggs, half and half, vanilla extract, orange brandy, and salt. Pour over the bread. Cover, and chill at least 8 hours, or overnight. \n\nPreheat oven to 350 degrees F (175 degrees C). Remove the dish from the refrigerator, and bring to room temperature \n\nBake uncovered 35 to 40 minutes in the preheated oven, until puffed and lightly brown", image: UIImage(named: "creme_brulee")!),
        
        Recipe(name: "Fluffy Pancakes", time: 25, ingredients:
            [
                Ingredient(name: "milk", measurementType: .cup, quantity: 0.75),
                Ingredient(name: "white vinegar", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "all-purpose flour", measurementType: .cup, quantity: 1),
                Ingredient(name: "white sugar", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "baking powder", measurementType: .teaspoon, quantity: 1),
                Ingredient(name: "baking soda", measurementType: .teaspoon, quantity: 0.5),
                Ingredient(name: "salt", measurementType: .teaspoon, quantity: 0.5),
                Ingredient(name: "egg", measurementType: .piece, quantity: 1),
                Ingredient(name: "butter, melted", measurementType: .tablespoon, quantity: 2),
                Ingredient(name: "cooking spray", measurementType: .piece, quantity: 1)
            ], description: "Combine milk with vinegar in a medium bowl and set aside for 5 minutes to sour. \n\nCombine flour, sugar, baking powder, baking soda, and salt in a large mixing bowl. Whisk egg and butter into soured milk. Pour the flour mixture into the wet ingredients and whisk until lumps are gone. \n\nHeat a large skillet over medium heat, and coat with cooking spray. Pour 1/4 cupfuls of batter onto the skillet, and cook until bubbles appear on the surface. Flip with a spatula, and cook until browned on the other side.", image: UIImage(named: "pancakes")!),

        Recipe(name: "Peanut Butter Bars", time: 85, ingredients:
            [
                Ingredient(name: "butter or margarine, melted", measurementType: .cup, quantity: 1),
                Ingredient(name: "graham cracker crumbs", measurementType: .cup, quantity: 2),
                Ingredient(name: "graham cracker crumbs", measurementType: .cup, quantity: 2),
                Ingredient(name: "peanut butter", measurementType: .cup, quantity: 1),
                Ingredient(name: "semisweet chocolate chips", measurementType: .cup, quantity: 1.5)
            ], description: "In a medium bowl, mix together the butter or margarine, graham cracker crumbs, confectioners' sugar, and 1 cup peanut butter until well blended. Press evenly into the bottom of an ungreased 9x13 inch pan. \n\n In a metal bowl over simmering water, or in the microwave, melt the chocolate chips with the peanut butter, stirring occasionally until smooth. Spread over the prepared crust. Refrigerate for at least one hour before cutting into squares.", image: UIImage(named: "bars")!),

        Recipe(name: "Easy Lemon Cookies", time: 30, ingredients:
            [
                Ingredient(name: "lemon cake mix", measurementType: .piece, quantity: 1),
                Ingredient(name: "eggs", measurementType: .piece, quantity: 2),
                Ingredient(name: "vegetable oil", measurementType: .cup, quantity: 0.333333),
                Ingredient(name: "lemon extract", measurementType: .teaspoon, quantity: 1),
                Ingredient(name: "confectioners' sugar for decoration", measurementType: .cup, quantity: 0.333333),

            ], description: "Preheat oven to 375 degrees F (190 degrees C). \n\nPour cake mix into a large bowl. Stir in eggs, oil, and lemon extract until well blended. Drop teaspoonfuls of dough into a bowl of confectioners' sugar. Roll them around until they're lightly covered. Once sugared, put them on an ungreased cookie sheet. \n\nBake for 6 to 9 minutes in the preheated oven. The bottoms will be light brown, and the insides chewy.", image: UIImage(named: "lemon_cookies")!),

        Recipe(name: "Apple Pie", time: 90, ingredients:
            [
                Ingredient(name: "pastry for a 9 inch double crust pie", measurementType: .piece, quantity: 1),
                Ingredient(name: "unsalted butter", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "all-purpose flour", measurementType: .tablespoon, quantity: 3),
                Ingredient(name: "water", measurementType: .cup, quantity: 0.25),
                Ingredient(name: "white sugar", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "packed brown suga", measurementType: .cup, quantity: 0.5),
                Ingredient(name: "Granny Smith apples - peeled, cored and sliced", measurementType: .piece, quantity: 8)
            ], description: "Preheat oven to 425 degrees F (220 degrees C). Melt the butter in a saucepan. Stir in flour to form a paste. Add water, white sugar and brown sugar, and bring to a boil. Reduce temperature and let simmer. \n\nPlace the bottom crust in your pan. Fill with apples, mounded slightly. Cover with a lattice work crust. Gently pour the sugar and butter liquid over the crust. Pour slowly so that it does not run off. \n\nBake 15 minutes in the preheated oven. Reduce the temperature to 350 degrees F (175 degrees C). Continue baking for 35 to 45 minutes, until apples are soft.", image: UIImage(named: "apple_pie")!),

        Recipe(name: "Broccoli Noodles and Cheese Casserole", time: 30, ingredients:
            [
               Ingredient(name: "package egg noodles", measurementType: .piece, quantity: 1),
               Ingredient(name: "head broccoli, cut into florets", measurementType: .piece, quantity: 1),
               Ingredient(name: "cottage cheese", measurementType: .cup, quantity: 2),
               Ingredient(name: "shredded Cheddar cheese", measurementType: .cup, quantity: 2)
            ], description: "Preheat oven to 350 degrees F (175 degrees C). Bring a large pot of lightly salted water to a boil. Add pasta and cook for 8 to 10 minutes or until al dente; drain. \n\nSteam broccoli until bright green and tender, 5 to 10 minutes. Combine broccoli, pasta and cottage cheese in 2 quart baking dish; mix we \n\n Sprinkle pasta mixture with Cheddar cheese and bake for 8 to 10 minutes, until cheese is bubbly.", image: UIImage(named: "noodles")!),

        Recipe(name: "Banana Bread", time: 75, ingredients:
            [
                Ingredient(name: "ripe bananas, mashed", measurementType: .piece, quantity: 3),
                Ingredient(name: "white sugar", measurementType: .cup, quantity: 1),
                Ingredient(name: "egg", measurementType: .piece, quantity: 1),
                Ingredient(name: "melted butter", measurementType: .cup, quantity: 0.25),
                Ingredient(name: "all-purpose flour", measurementType: .cup, quantity: 1.5),
                Ingredient(name: "baking soda", measurementType: .teaspoon, quantity: 1),
                Ingredient(name: "salt", measurementType: .teaspoon, quantity: 1)
            ], description: "Preheat oven to 325 degrees F (165 degrees C). Grease a 9x5-inch loaf pan. \n\nCombine bananas, sugar, egg, and butter together in a bowl. Mix flour and baking soda together in a separate bowl; stir into banana mixture until batter is just mixed. Stir salt into batter. Pour batter into the prepared loaf pan. \n\nBake in the preheated oven until a toothpick inserted in the center of the bread comes out clean, about 1 hour.", image: UIImage(named: "banana_bread")!),

        Recipe(name: "Insalata Caprese", time: 15, ingredients:
            [
                Ingredient(name: "large ripe tomatoes, sliced 1/4 inch thick", measurementType: .piece, quantity: 4),
                Ingredient(name: "fresh mozzarella cheese, sliced 1/4 inch thick", measurementType: .kilo, quantity: 1),
                Ingredient(name: "fresh basil leave", measurementType: .cup, quantity: 0.333333),
                Ingredient(name: "extra virgin olive oil", measurementType: .tablespoon, quantity: 3),
                Ingredient(name: "salt", measurementType: .teaspoon, quantity: 1),
                Ingredient(name: "pepper", measurementType: .teaspoon, quantity: 0.333333)
            ], description: "On a large platter, alternate and overlap the tomato slices, mozzarella cheese slices, and basil leaves. Drizzle with olive oil. Season with sea salt and pepper.", image: UIImage(named: "caprese")!)
    ]
}
