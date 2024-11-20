import UIKit

protocol CoordinatorProtocol {
    func start()
    func pop()
}

class Coordinator: Coordinatable {

    var childCoordinators: [Coordinatable] = []
    var parent: Coordinatable?

    // MARK: - Properties -

    private let navigationController: UINavigationController

    // MARK: - Initializer -

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.navigationBar.tintColor = .systemPink
    }

    // MARK: - Public Methods -

    func start() {
        let coordinator = MainCoordinator(navigationController: navigationController, parent: self)
        coordinator.start()
    }

    func pop() {
        navigationController.popViewController(animated: true)
    }
}
