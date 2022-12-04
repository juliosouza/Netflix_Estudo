import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    func start() {
        navigationController.pushViewController(LoginViewController(), animated: true)
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
