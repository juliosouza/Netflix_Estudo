import Foundation
import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    
    private lazy var loginLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.layer.cornerRadius = 10
        view.text = "Usuário"
        view.textAlignment = .center
        view.backgroundColor = UIColor(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        view.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.masksToBounds = true
        return view
    }()
    
    private lazy var passwordLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Senha"
        view.textAlignment = .center
        view.backgroundColor = UIColor(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
        view.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    
    private lazy var loginTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.backgroundColor =  UIColor(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 0.25)
        view.textColor =  UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        view.placeholder = "Digite o usuário..."
        view.textAlignment = .center
        view.autocapitalizationType = .none
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.backgroundColor =  UIColor(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 0.25)
        view.textColor =  UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        view.placeholder = "Digite a senha..."
        view.textAlignment = .center
        view.autocapitalizationType = .none
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var loginButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Acessar", for: .normal)
        view.backgroundColor = .red
        view.addTarget(self, action: #selector(login), for: .touchDown)
        return view
    }()
    
    private let stackView: UIStackView = {
            let view = UIStackView()
            view.distribution = .equalSpacing
            view.spacing = 8
            view.axis = .vertical
            view.alignment = .fill
            return view
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addSubViews()
        addContraints()
    }
    
    private func addSubViews() {
        stackView.addArrangedSubview(loginLabel)
        stackView.addArrangedSubview(loginTextField)
        stackView.addArrangedSubview(passwordLabel)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        view.addSubview(stackView)
    }
    
    private func addContraints() {

        stackView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview().inset(10)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        loginTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
        
        loginButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().inset(10)
            make.height.equalTo(40)
        }
    }
    
    @objc func login() {
        
    }
}
