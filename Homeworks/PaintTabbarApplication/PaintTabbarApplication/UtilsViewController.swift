
import UIKit

class UtilsViewController: UIViewController {

    fileprivate var drawVC: DrawViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        drawVC = self.tabBarController?.viewControllers?.first as! DrawViewController
    }

    @IBAction func clearImage(_ sender: UIButton) {
        drawVC.imageView.image = nil
    }

    @IBAction func setWhiteBackground(_ sender: UIButton) {
        drawVC.view.backgroundColor = .white
    }

    @IBAction func setBlackBackground(_ sender: UIButton) {
        drawVC.view.backgroundColor = .black
    }
}
