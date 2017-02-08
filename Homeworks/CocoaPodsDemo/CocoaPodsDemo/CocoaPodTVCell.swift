
import UIKit

class CocoaPodTVCell: UITableViewCell {

    @IBOutlet weak var podImageView: UIImageView!
    @IBOutlet weak var podNameLabel: UILabel!
    @IBOutlet weak var podLinkLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        let cornerRadius = podImageView.bounds.width / 2
        podImageView.layer.cornerRadius  = cornerRadius
        podImageView.layer.masksToBounds = true
    }

    var pod: CocoaPod! {
        didSet {
            updateUI()
        }
    }

    func updateUI() {
        podImageView.image = pod.image
        podNameLabel.text  = pod.name
        podLinkLabel.text  = pod.link
    }

    @IBAction func favouriteTapped(_ sender: UIButton) {
        podImageView.layer.borderColor = UIColor(colorLiteralRed: 252.0/255.0, green: 194.0/255.0, blue: 0, alpha: 1.0).cgColor
        podImageView.layer.borderWidth = 4
    }
}
