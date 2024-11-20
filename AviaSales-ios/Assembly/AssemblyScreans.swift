import UIKit

protocol MainAssemblyProtocol {
    static func prepareSplashModule(
        _ coordinator: MainCoordinator
    ) -> UIViewController

//    static func prepareAviaSalesModule(
//        _ coordinator: MainCoordinator
//    ) -> UIViewController
}

class MainScreenBuilder: MainAssemblyProtocol {
    static func prepareSplashModule(
        _ coordinator: MainCoordinator
    ) -> UIViewController {
        let view = SplashViewController()
//        let networkManager = NetworkManager()
//        let presenter = (view: view, networkManager: networkManager)

//        view.presenter = presenter
//        presenter.networkManager = networkManager
//        presenter.coordinator = coordinator

        return view
    }
    
//    static func prepareAviaSalesModule(
//        _ coordinator: MainCoordinator
//    ) -> UIViewController {
//
//    }
    

}
