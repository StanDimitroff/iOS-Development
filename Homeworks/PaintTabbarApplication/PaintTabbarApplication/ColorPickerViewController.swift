
import UIKit

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!

    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UILabel!
    @IBOutlet weak var alphaSliderLabel: UILabel!

    @IBOutlet weak var createdColorLabel: UILabel!
    @IBOutlet weak var createdColorView: UIView!

     fileprivate var selectedColors: (red: Float, green: Float, blue: Float, alpha: Float) =
        (red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0) {
        didSet {
            createdColorLabel.text =
                String(format: "R: %0.1f G: %0.1f B: %0.1f A: %0.1f",
                       selectedColors.red, selectedColors.green,
                       self.selectedColors.blue, selectedColors.alpha)

            let createdColor: UIColor = UIColor(red: CGFloat(selectedColors.red),
                                                green: CGFloat(selectedColors.green),
                                                   blue: CGFloat(selectedColors.blue),
                                                   alpha: CGFloat(selectedColors.alpha))
            self.createdColor = createdColor
        }
    }

    var createdColor: UIColor = .black {
        didSet {
            createdColorView.backgroundColor = createdColor
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        createdColorView.layer.cornerRadius = 10
        createdColorView.backgroundColor = createdColor
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let value = String(format: "%0.1f", sender.value)

        switch sender {
        case redSlider:
            selectedColors.red = sender.value
            redSliderLabel.text = value
            let redColor = UIColor(red: CGFloat(sender.value), green: 0.0, blue: 0.0, alpha: 1.0)
            redSlider.minimumTrackTintColor = redColor
            redSlider.maximumTrackTintColor = redColor

        case greenSlider:
            selectedColors.green = sender.value
            greenSliderLabel.text = value
            let greenColor = UIColor(red: 0.0, green: CGFloat(sender.value), blue: 0.0, alpha: 1.0)
            greenSlider.minimumTrackTintColor = greenColor
            greenSlider.maximumTrackTintColor = greenColor

        case blueSlider:
            selectedColors.blue = sender.value
            blueSliderLabel.text = value
            let blueColor = UIColor(red: 0.0, green: 0.0, blue: CGFloat(sender.value), alpha: 1.0)
            blueSlider.minimumTrackTintColor = blueColor
            blueSlider.maximumTrackTintColor = blueColor

        case alphaSlider:
            selectedColors.alpha = sender.value
            alphaSliderLabel.text = value
            let alpha = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: CGFloat(sender.value))
            alphaSlider.minimumTrackTintColor = alpha
            alphaSlider.maximumTrackTintColor = alpha

        default: break
        }
    }
}

