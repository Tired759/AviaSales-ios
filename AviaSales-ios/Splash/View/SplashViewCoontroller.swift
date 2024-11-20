import UIKit

class SplashViewController: UIViewController {

    private lazy var imgView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "aviaSplash")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false

        return img
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initUI()
        initConstraints()
        configureView()
    }

    private func initUI() {
        view.addSubview(imgView)
        initConstraints()
    }

    private func initConstraints() {
        NSLayoutConstraint.activate([
            imgView.topAnchor.constraint(equalTo: view.topAnchor),
            imgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imgView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

    func configureView() {

    }
}
