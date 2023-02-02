import UIKit
import SupportSDK

class SupportNavController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let helpCenter = HelpCenterUi.buildHelpCenterOverviewUi(withConfigs: [])
        pushViewController(helpCenter, animated: true)
    }
}
