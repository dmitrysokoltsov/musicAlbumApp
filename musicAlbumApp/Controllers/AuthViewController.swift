import UIKit

class AuthViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = #colorLiteral(red: 1, green: 0.7299812436, blue: 1, alpha: 1)

        return scrollView
    }()
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.7299812436, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = label.font.withSize(30)
        label.text = "Lets find some songs"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let goButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.9079293609, green: 0.4978057742, blue: 0.7053093314, alpha: 1)
        button.setTitle(" LET'S GO ", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(AuthViewController.self, action: #selector(signInButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private var textFieldsStackView = UIStackView()
    private var buttonsStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }

    private func setupViews() {
        title = "SignIn"
        
        view.addSubview(scrollView)
        scrollView.addSubview(backgroundView)
        backgroundView.addSubview(loginLabel)
        backgroundView.addSubview(goButton)
    }
    
    @objc private func signUpButtonTapped() {
        
    }
    
    @objc private func signInButtonTapped() {
        let navVC = UINavigationController(rootViewController: AlbumsViewController())
        navVC.modalPresentationStyle = .fullScreen
        navVC.toolbar.barTintColor = #colorLiteral(red: 1, green: 0.7299812436, blue: 1, alpha: 1)
        navVC.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.7299812436, blue: 1, alpha: 1)
        self.present(navVC, animated: true)
    }
}

//MARK: - SetConstraints

extension AuthViewController {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            backgroundView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            backgroundView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            loginLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            loginLabel.bottomAnchor.constraint(equalTo: goButton.topAnchor, constant: -30),
        ])
        
        NSLayoutConstraint.activate([
            goButton.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            goButton.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor)
        ])
        
    }
}

