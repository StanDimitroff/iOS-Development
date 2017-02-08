
import UIKit

struct CocoaPod {
    let image: UIImage
    let name: String
    let link: String
    let isFavourite: Bool = false

    init(image: UIImage, name: String, link: String) {
        self.image = image
        self.name  = name
        self.link  = link
    }
}
