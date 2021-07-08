//
//  SignUpViewController.swift
//  FourthTeamWork
//
//  Created by Macbook Air on 7/8/21.
//

import UIKit

class SignUpViewController: BaseViewController {
    
    
    @IBOutlet weak var fieldFullName: TeamWorkTextField!
    @IBOutlet weak var fieldEmail: TeamWorkTextField!
    @IBOutlet weak var fieldPhone: TeamWorkTextField!
    @IBOutlet weak var fieldPassword: TeamWorkTextField!
    @IBOutlet weak var stackViewFields: UIStackView!
    @IBOutlet weak var signUpBtn: UIButton!
    
    private var fullName: String { fieldFullName.text ?? "" }
    private var email: String { fieldEmail.text ?? "" }
    private var phone: String { fieldPhone.text ?? "" }
    private var password: String { fieldPassword.text ?? "" }
    
    private var isChecked = false
    private var coreDataManager: CoreDataManagerProtocol!
    private var viewModel: SignUpViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        configureViewModel()
        
        let backButton = UIBarButtonItem(image: UIImage(named: "myBack"), style: .plain, target: self, action: #selector(onBack))
            self.navigationItem.leftItemsSupplementBackButton = true
            self.navigationItem.leftBarButtonItem = backButton
        
    }
    
    @objc func onBack() {
        
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        viewModel.signUp(withFullName: fullName, withEmail: email, withMobilePhone: phone, withPassword: password)
    }
    
    
    @IBAction func onCheck(_ sender: UIButton) {
        let imageName = isChecked ? "checkEmpty" : "checkBtn"
        sender.setImage(UIImage(named: imageName), for: .normal)
        isChecked.toggle()
    }
    
    private func setupLayout() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "Sign Up"
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.init(hex: "242126")]
        
        //MARK: - set style for field
        stackViewFields.arrangedSubviews.forEach {
            $0.layer.cornerRadius = 20
            $0.backgroundColor = UIColor(hex: "EFEFEF")
        }
        
        //MARK: - set style for Sing Up Button
        signUpBtn.layer.cornerRadius = 20
        signUpBtn.layer.borderWidth = 1
        signUpBtn.layer.borderColor = UIColor.init(hex: "5ABD8C").cgColor
        
    }
    
    private func configureViewModel() {
        coreDataManager = CoreDataManager()
        viewModel = SignUpViewModel(with: coreDataManager)
    }

}
