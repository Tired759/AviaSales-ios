import UIKit

enum Destination {
    case splash
    case aviaSales
}

protocol DetailCoordinating: AnyObject {
    func popTo(_ destination: Destination)
}

protocol MainCoordinating: AnyObject {
    func pushTo(_ destination: Destination)
}

class MainCoordinator: Coordinatable {

    // MARK: - Properties -

    weak var parent: Coordinatable?
    var childCoordinators: [Coordinatable] = []

    // MARK: - Private properties -

    private let navigationController: UINavigationController


    // MARK: - Initializer -

    init(navigationController: UINavigationController, parent: Coordinatable? = nil) {
        self.navigationController = navigationController
        self.parent = parent
    }

    // MARK: - Public Methods -

    func start() {
        let viewController = MainScreenBuilder.prepareSplashModule(self)
        navigationController.pushViewController(viewController, animated: true)
    }

    func pop() {
        navigationController.popViewController(animated: true)
    }
}
