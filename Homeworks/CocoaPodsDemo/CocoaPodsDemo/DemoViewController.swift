
import UIKit
import NVActivityIndicatorView
import SCLAlertView
import ContactCircularView

class DemoViewController: UIViewController {

    var pod: CocoaPod!

    override func viewDidLoad() {
        super.viewDidLoad()

        switch pod.name {
            case "NVActivityIndicatorView":
                let frame  = CGRect(x: 0, y: 0, width: 100, height: 100)
                let activityView = NVActivityIndicatorView(frame: frame, type: .ballGridPulse, color: .red, padding: 15)
                activityView.center = self.view.center
                self.view.addSubview(activityView)

                activityView.startAnimating()
            case "SCLAlertView":
                SCLAlertView().showInfo("Important info", subTitle: "This is alert demo my friend")
            case "ContactCircularView":
                let contactInitialsView = ContactCircularView()
                contactInitialsView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
                contactInitialsView.center = self.view.center
                contactInitialsView.backgroundColor = .red
                contactInitialsView.applyBorderWithColor(.green, andWidth: 1.0)
                contactInitialsView.applyTextFont(.italicSystemFont(ofSize: 20), andColor: .green)
                contactInitialsView.applyInitialsFromName("John Doe")

                self.view.addSubview(contactInitialsView)

        default: break
        }
    }
}


