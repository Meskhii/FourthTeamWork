//
//  SignInViewController.swift
//  FourthTeamWork
//
//  Created by Macbook Air on 7/8/21.
//

import UIKit

class SignInViewController: BaseViewController {

    @IBOutlet weak var fieldEmail: TeamWorkTextField!
    @IBOutlet weak var fieldPassword: TeamWorkTextField!
    @IBOutlet weak var stackViewFields: UIStackView!
    @IBOutlet weak var signInBtn: UIButton!
    
    private var email: String { fieldEmail.text ?? "" }
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
    
    @IBAction func onCheck(_ sender: UIButton) {
        let imageName = isChecked ? "checkEmpty" : "checkBtn"
        sender.setImage(UIImage(named: imageName), for: .normal)
        isChecked.toggle()
    }
    
    
    @IBAction func onSignIn(_ sender: Any) {
        viewModel.signIn(with: email, with: password) { success in
            print("Sign In: \(success)")
        }
    }
    
    
    private func setupLayout() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "Sign In"
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.init(hex: "242126")]
        
        //MARK: - set style for field
        stackViewFields.arrangedSubviews.forEach {
            $0.layer.cornerRadius = 20
            $0.backgroundColor = UIColor(hex: "EFEFEF")
        }
        
        //MARK: - set style for Sing In Button
        signInBtn.layer.cornerRadius = 20
        signInBtn.layer.borderWidth = 1
        signInBtn.layer.borderColor = UIColor.init(hex: "5ABD8C").cgColor
        
    }
    
    private func configureViewModel() {
        coreDataManager = CoreDataManager()
        viewModel = SignUpViewModel(with: coreDataManager)
    }
    

}
