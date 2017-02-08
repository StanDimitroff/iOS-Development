
import UIKit

class CocoaPodsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var pods: [CocoaPod] = [
        CocoaPod(image: UIImage(named: "indicator")!, name: "NVActivityIndicatorView", link: "https://github.com/ninjaprox/NVActivityIndicatorView"),
        CocoaPod(image: UIImage(named: "alert")!, name: "SCLAlertView", link: "https://github.com/vikmeup/SCLAlertView-Swift"),
        CocoaPod(image: UIImage(named: "initial")!, name: "ContactCircularView", link: "https://github.com/k8mil/ContactCircularView")
    ]

    var selectedPod: CocoaPod!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
        tableView.register(UINib(nibName: "CocoaPodTVCell", bundle: nil), forCellReuseIdentifier: "PodCell")
    }
}

// MARK: UITableViewDataSource
extension CocoaPodsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pods.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "PodCell", for: indexPath) as! CocoaPodTVCell
        cell.pod = pods[indexPath.row]

        return cell
    }
}

// MARK: UITableViewDelegate
extension CocoaPodsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPod = pods[indexPath.row]

        performSegue(withIdentifier: "ShowDemo", sender: self)
    }
}

// MARK: Navigation
extension CocoaPodsViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DemoViewController {
            vc.pod = selectedPod
        }
    }
}

