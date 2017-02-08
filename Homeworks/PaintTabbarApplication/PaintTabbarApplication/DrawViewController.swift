
import UIKit

class DrawViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    fileprivate var previousTouch: CGPoint?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func drawLine(_ begining: CGPoint, end: CGPoint){
        // get created color
        let colorPickerVC = self.tabBarController?.viewControllers?[1] as! ColorPickerViewController
        let strokeColor = colorPickerVC.createdColor.cgColor

        UIGraphicsBeginImageContext(self.view.frame.size)

        let context = UIGraphicsGetCurrentContext()
        self.imageView.image?.draw(in: self.view.frame)
        context?.move(to: begining)
        context?.addLine(to: end)
        context?.setLineWidth(4.0)
        context?.setStrokeColor(strokeColor)
        context?.setLineCap(.round)
        context?.strokePath()
        context?.setBlendMode(.normal)

        self.imageView.image = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.imageView)
        self.previousTouch = position
        drawLine(self.previousTouch!, end: position!)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.imageView)
        drawLine(self.previousTouch!, end: position!)
        self.previousTouch = position
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let lastTouch = touches.first
        let position = lastTouch?.location(in: self.imageView)
        drawLine(self.previousTouch!, end: position!)
    }
}

